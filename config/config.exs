# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :tdp,
  ecto_repos: [Tdp.Repo]

# Configures the endpoint
config :tdp, TdpWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "tHLvt9jwRLemYBP6YAq5UXCgeAmGig5H8GjDON6FFT+acytn0ws6ip0Q2XuuEo4U",
  render_errors: [view: TdpWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Tdp.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
