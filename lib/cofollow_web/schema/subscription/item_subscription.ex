defmodule CofollowWeb.Schema.Subscription.ItemSubscription do
  use Absinthe.Schema.Notation

  object :item_subscriptions do
    field :get_item, :item do
      config(fn _, _ ->
        {:ok, topic: "*"}
      end)

      trigger(
        :get_item,
        topic: fn _item ->
          "*"
        end
      )
    end
  end
end
