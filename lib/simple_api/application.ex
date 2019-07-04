defmodule SimpleServer.Application do
  use Application

  def start(_type, _args),
    do: Supervisor.start_link(children(), opts())

  defp children do
    [
      SimpleServer.Endpoint
    ]
  end

  defp opts do
    [
      strategy: :one_for_one,
      name: SimpleServer.Supervisor
    ]
  end
end
