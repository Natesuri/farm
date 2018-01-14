defmodule Farm.Fauna do
  use Ecto.Schema
  import Ecto.Changeset
  alias Farm.Fauna


  schema "fauna" do
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(%Fauna{} = fauna, attrs) do
    fauna
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
