defmodule Cofollow.Repo do
  use Ecto.Repo,
    otp_app: :cofollow,
    adapter: Ecto.Adapters.Postgres
end
