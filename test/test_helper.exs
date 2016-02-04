ExUnit.start

Mix.Task.run "ecto.create", ~w(-r CfP.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r CfP.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(CfP.Repo)

