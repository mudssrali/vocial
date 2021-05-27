defmodule Vocial.Accounts do
    import Ecto.Query, warn: false
  
    alias Vocial.Repo
    alias Vocial.Accounts.User

    def list_users, do: Repo.all(User)

    def new_user, do: User.changeset(%User{}, %{})

    def create_user(attrs \\ %{}) do
        %User{}
        |> User.changeset(attrs)
        |> Repo.insert()
    end

    def get_user(id), do: Repo.get(User, id)

end