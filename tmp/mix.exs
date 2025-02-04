defmodule DependabotTest.Mixfile do
  use Mix.Project

  def project do
    %{elixir: elixir_version} = versions()
    [
      app: :dependabot_test,
      version: "0.1.0",
      elixir: elixir_version,
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  defp versions do
    {map, []} = Code.eval_file("version", ".")
    map
  end

  def application do
    [extra_applications: [:logger]]
  end

  defp deps do
    [
      {:plug, "1.4.3"},
      {:phoenix, "== 1.2.1"}
    ]
  end
end
