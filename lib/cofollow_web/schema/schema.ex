defmodule CofollowWeb.Schema do
  use Absinthe.Schema

  import_types(CofollowWeb.Schema.Type.ItemType)
  import_types(CofollowWeb.Schema.Query.ItemQuery)
  import_types(CofollowWeb.Schema.Subscription.ItemSubscription)

  query do
    import_fields(:item_queries)
  end

  mutation do
    import_fields(:item_queries)
  end

  subscription do
    import_fields(:item_subscriptions)
  end
end
