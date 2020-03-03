# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :c_portfolio,
  ecto_repos: [CPortfolio.Repo]

# Configures the endpoint
config :c_portfolio, CPortfolioWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "qx45vZKP3uGyyuJiFrlrEkfRG1r60euNWNaZnJkyxYK7qSJEjgAnxb/2EC+YnnTu",
  render_errors: [view: CPortfolioWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: CPortfolio.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "7ls+pyaL"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
