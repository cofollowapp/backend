use Mix.Config

config :cofollow, CofollowWeb.Endpoint, secret_key_base: System.get_env("SECRET_KEY_BASE")

# Configure your database
config :cofollow, Cofollow.Repo,
  adapter: Ecto.Adapters.Postgres,
  url: System.get_env("DATABASE_URL"),
  pool_size: 20
