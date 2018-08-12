defmodule CofollowWeb.Schema.Type.ItemType do
  use Absinthe.Schema.Notation

  @desc "An item"
  object :item do
    field(:id, :id)
    field(:name, :string)
  end
end
