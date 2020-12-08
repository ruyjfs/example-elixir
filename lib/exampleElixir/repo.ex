defmodule ExampleElixir.Repo do
  use Ecto.Repo,
    otp_app: :exampleElixir,
    adapter: Ecto.Adapters.Postgres
end
