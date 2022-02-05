defmodule Comparator.Repo do
  use Ecto.Repo,
    otp_app: :comparator,
    adapter: Ecto.Adapters.Postgres
end
