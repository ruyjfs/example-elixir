defmodule ExampleElixir.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      ExampleElixir.Repo,
      # Start the Telemetry supervisor
      ExampleElixirWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: ExampleElixir.PubSub},
      # Start the Endpoint (http/https)
      ExampleElixirWeb.Endpoint
      # Start a worker by calling: ExampleElixir.Worker.start_link(arg)
      # {ExampleElixir.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: ExampleElixir.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    ExampleElixirWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
