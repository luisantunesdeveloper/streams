use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
#
# You should document the content of this
# file or create a script for recreating it, since it's
# kept out of version control and might be hard to recover
# or recreate for your teammates (or you later on).
config :streams, Streams.Endpoint,
  secret_key_base: "nEhrAdDbeKhze0lTn9+xPf6xpVeNCu4h+U5CNi6Ejw9kyNvNnXExZIffpv1YyXq4"

# Configure your database
config :streams, Streams.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "streams_prod",
  pool_size: 20
