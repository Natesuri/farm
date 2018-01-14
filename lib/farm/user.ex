defmodule Farm.User do
  use Ecto.Schema
  import Ecto.Changeset
  alias Farm.User


  schema "users" do
    field :bio, :string
    field :email, :string
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(%User{} = user, attrs) do
    user
    |> cast(attrs, [:name, :email, :bio])
    |> validate_required([:name, :email])
    |> validate_length(:bio, max: 200)
    |> validate_format(:email, ~r/@/)
  end
end
