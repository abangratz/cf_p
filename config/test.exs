use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :cf_p, CfP.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :cf_p, CfP.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "cf",
  password: "cf",
  database: "cf_p_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
