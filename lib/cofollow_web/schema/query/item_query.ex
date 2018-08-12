defmodule CofollowWeb.Schema.Query.ItemQuery do
  use Absinthe.Schema.Notation

  @items %{
    "foo" => %{id: "foo", name: "Foo"},
    "bar" => %{id: "bar", name: "Bar"}
  }

  object :item_queries do
    field :items, list_of(:item) do
      resolve(fn %{}, _ ->
        {:ok, Map.values(@items)}
      end)
    end

    field :get_item, :item do
      arg(:id, non_null(:id))

      resolve(&__MODULE__.get_item/2)
    end
  end

  def get_item(%{id: id}, %{context: %{current_user: current_user}}) do
    {:ok, @items[id]}
  end
end
