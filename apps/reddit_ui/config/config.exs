# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :reddit_ui,
  namespace: RedditUi

# Configures the endpoint
config :reddit_ui, RedditUiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Pp+VGyH4gGBNV9gzw7K6RgouvuAk23mDLsTbvLrrG0hGDTZv3A53Z5UvBRxuPU6+",
  render_errors: [view: RedditUiWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: RedditUi.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
