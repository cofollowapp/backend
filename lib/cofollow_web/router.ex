defmodule CofollowWeb.Router do
  use CofollowWeb, :router

  pipeline :browser do
    plug(:accepts, ["html"])
    plug(:fetch_session)
    plug(:fetch_flash)
    plug(:protect_from_forgery)
    plug(:put_secure_browser_headers)
  end

  pipeline :api do
    plug(:accepts, ["json"])
  end

  scope "/", CofollowWeb do
    # Use the default browser stack
    pipe_through(:browser)

    get("/", PageController, :index)
  end

  pipeline :graphql do
    plug(CofollowWeb.Context)
  end

  scope "/graphql" do
    pipe_through(:graphql)

    forward("/", Absinthe.Plug, schema: CofollowWeb.Schema)
  end

  if Mix.env() == :dev do
    scope "/graphiql" do
      pipe_through(:graphql)

      forward(
        "/",
        Absinthe.Plug.GraphiQL,
        schema: CofollowWeb.Schema,
        socket: CofollowWeb.UserSocket
      )
    end
  end
end
