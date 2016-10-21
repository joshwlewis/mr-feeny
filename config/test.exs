use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :mrfeeny, Mrfeeny.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :mrfeeny, Mrfeeny.Repo,
  adapter: Ecto.Adapters.Postgres,
  url: System.get_env("DATABASE_URL")
