defmodule FreelancerRates do
  @moduledoc """
  Instructions
  In this exercise you'll be writing code to help a freelancer communicate with a project 
  manager by providing a few utilities to quickly calculate daily and monthly rates, optionally 
  with a given discount.

  We first establish a few rules between the freelance and the project manager:
  * The daily rate is 8 times the hourly rate.
  * A month has 22 billable days

  The freelancer is offering to apply a discount if the project manager chooses to let the 
  freelancer bill per month, which can come in handy if there is a certain budget the project manager 
  has to work with.

  Discounts are modeled as fractional numbers representing percentage, for example 25.0 
  (25%).
  """

  def daily_rate(hourly_rate), do: hourly_rate * 8.0

  def apply_discount(before_discount, discount) do
    before_discount * (100 - discount) / 100
  end

  def monthly_rate(hourly_rate, discount) do
    hourly_rate
    |> daily_rate()
    |> apply_discount(discount)
    |> then(&(&1 * 22))
    |> ceil()
  end

  def days_in_budget(budget, hourly_rate, discount) do
    rate = hourly_rate |> daily_rate() |> apply_discount(discount)

    Float.floor(budget / rate, 1)
  end
end
