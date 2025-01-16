defmodule HexTest do
  def run do
    run_script()
  end

  defp run_script do
    args =
      [
        "run",
        "--no-deps-check",
        "--no-start",
        "--no-compile",
        "--no-elixir-version-check",
        "update_deps.exs"
      ]

    System.cmd(
      "mix",
      args,
      cd: "tmp",
      env: %{
        "MIX_EXS" => nil,
        "MIX_LOCK" => nil,
        "MIX_DEPS" => nil
      }
    ) |> IO.inspect()
  end
end

HexTest.run
