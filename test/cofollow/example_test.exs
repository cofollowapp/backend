defmodule Cofollow.ExampleTest do
  use Cofollow.DataCase

  describe "just an example test" do
    assert {:ok, %{id: id}} = {:ok, %{id: 21}}
    assert id == 21
  end

  describe "just an example test" do
    assert {:ok, %{id: id}} = {:ok, %{id: 24}}
    assert id == 24
  end
end
