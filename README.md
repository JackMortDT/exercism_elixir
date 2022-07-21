<h2 align="center">Elixir Exercism 🦎</h2>

[![codecov](https://codecov.io/gh/JackMortDT/exercism_elixir/branch/main/graph/badge.svg?token=H9LV4FVICY)](https://codecov.io/gh/JackMortDT/exercism_elixir)
![Version](https://img.shields.io/badge/version-0.1.0-blue.svg?cacheSeconds=2592000)


> Exercism solutions written in elixir

```elixir
def exercism(problem) do
  problem
  |> add_solution()
  |> run(:tests)
  |> upload_solution()
  |> exercism(next_problem: true)
end
```

## Learn more

* exercism: https://exercism.org/tracks/elixir