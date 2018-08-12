use Mix.Config

# In this file, we keep production configuration that
# you'll likely want to automate and keep away from
# your version control system.
#
# You should document the content of this
# file or create a script for recreating it, since it's
# kept out of version control and might be hard to recover
# or recreate for your teammates (or yourself later on).
config :cofollow, CofollowWeb.Endpoint,
  secret_key_base: "Y7q5QraY5BR+BwJWBqN4j/eQ5bXD024E1BNCyVS5/GPXbQTjpWyyHvZpu+i5N3pr"

# Configure your database
config :cofollow, Cofollow.Repo,
  username: "postgres",
  password: "postgres",
  database: "cofollow_prod",
  pool_size: 15
