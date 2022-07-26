defmodule ExercismElixir.MixProject do
  use Mix.Project

  def project do
    [
      app: :exercism_elixir,
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps(),

      # Tests
      test_coverage: [tool: ExCoveralls],
      preferred_cli_env: [
        coveralls: :test,
        "coveralls.detail": :test,
        "coveralls.post": :test,
        "coveralls.html": :test,
        "coveralls.json": :test
      ],

      # Documentation
      name: "ExercismElixir",
      source_url: "https://github.com/JackMortDT/exercism_elixir",
      authors: ["JackMortDT"],
      docs: [
        # The main page in the docs
        main: "ExercismElixir",
        logo: "assets/Exercism-logo.svg.png",
        extras: ["README.md"]
      ]
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:credo, "~> 1.6", only: [:dev, :test], runtime: false},
      {:excoveralls, "~> 0.10", only: :test},
      {:ex_doc, "~> 0.27", only: :dev, runtime: false}
    ]
  end
end
