use Mix.Config

config :simple_server, SimpleServer.Endpoint, port: 4000
config :simple_server, redirect_url: "http://localhost:4000/bot"

import_config "#{Mix.env()}.exs"
