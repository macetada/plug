defmodule MacetadaPlugTest do
  use ExUnit.Case
  doctest MacetadaPlug

  test "greets the world" do
    assert MacetadaPlug.hello() == :world
  end
end
