defmodule NaverCafeRemover.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      NaverCafeRemover.ArticleRemover
      # Starts a worker by calling: NaverCafeRemover.Worker.start_link(arg)
      # {NaverCafeRemover.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: NaverCafeRemover.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
