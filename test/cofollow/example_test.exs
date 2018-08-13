defmodule Cofollow.ExampleTest do
  use Cofollow.DataCase

  describe "just an example test" do
    assert {:ok, %{id: id}} = {:ok, %{id: 21}}
    assert id == 21
  end
end
