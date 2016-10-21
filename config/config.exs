# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :mrfeeny,
  ecto_repos: [Mrfeeny.Repo]

# Configures the endpoint
config :mrfeeny, Mrfeeny.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "cqjcl8DBuXsa4L35gNRMGhOWnlRdNe0IWmonmTkYImYDVrMrDJGTR0ARTXkdLbP8",
  render_errors: [view: Mrfeeny.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Mrfeeny.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

IO.puts("MIX_ENV: #{Mix.env}")
IO.puts("DATABASE_URL: #{System.get_env("DATABASE_URL")}")

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
