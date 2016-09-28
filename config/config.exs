# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :streams,
  ecto_repos: [Streams.Repo]

# Configures the endpoint
config :streams, Streams.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "bHLR0JUZR/CrZaC0RSr+0xJ2Hizfvw+Eg209X8K+KQpDxu7m0i/WwfKVPzBibTO+",
  render_errors: [view: Streams.ErrorView, accepts: ~w(json)],
  pubsub: [name: Streams.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
