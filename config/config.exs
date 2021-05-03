# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :first_api,
  ecto_repos: [FirstApi.Repo],
  generators: [binary_id: true]

# Configures the endpoint
config :first_api, FirstApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "GtqqPYVVMpYVU10NOoFEoztlJSlh43bhIs60SUWJp03hhNQNSWlg3XfYDGrlraJr",
  render_errors: [view: FirstApiWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: FirstApi.PubSub,
  live_view: [signing_salt: "3t0MmmQh"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
