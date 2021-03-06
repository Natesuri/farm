# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :farm,
  ecto_repos: [Farm.Repo]

# Configures the endpoint
config :farm, FarmWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Z7xxf3gT6Hdfn/+6FyZJxQPrTSIYqAaJieULzI/8yq+zBogO4y/5fGyc24nBfuTD",
  render_errors: [view: FarmWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Farm.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
