defmodule MacetadaPlug.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      {Plug.Cowboy, scheme: :http, plug: ElixirPlug, options: [port: 80]}
    ]

    IO.puts("Running Plug server")

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: MacetadaPlug.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
