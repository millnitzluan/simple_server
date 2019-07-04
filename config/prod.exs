use Mix.Config

config :simple_server, SimpleServer.Endpoint,
  port: String.to_integer(System.get_env("PORT") || "4444")

config :simple_server, redirect_url: System.get_env("REDIRECT_URL")
