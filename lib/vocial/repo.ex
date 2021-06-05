defmodule Vocial.Repo do
  use Ecto.Repo,
      otp_app: :vocial,
      adapter: Ecto.Adapters.Postgres

  @doc """
  Dynamically loads the repository url from the
  DATABASE_URL environment variable.
  """
  def init(_, config) do
      config = config
        |> Keyword.put(:username, System.get_env("DB_USER") || "postgres")
        |> Keyword.put(:password, System.get_env("DB_PASSWORD") || "postgres")
        |> Keyword.put(:database, System.get_env("DB_NAME") || "vocial_dev")
        |> Keyword.put(:hostname, System.get_env("DB_HOST") || "localhost")
        |> Keyword.put(:port, (System.get_env("DB_PORT") || "5432") |> String.to_integer)
      {:ok, config} 
  end
end
