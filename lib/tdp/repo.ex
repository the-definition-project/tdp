defmodule Tdp.Repo do
  use Ecto.Repo,
    otp_app: :tdp,
    adapter: Ecto.Adapters.Postgres
end
