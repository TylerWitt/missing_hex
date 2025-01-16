defmodule HexTestTest do
  use ExUnit.Case
  doctest HexTest

  test "greets the world" do
    assert HexTest.hello() == :world
  end
end
