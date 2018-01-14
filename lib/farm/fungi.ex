defmodule Farm.Fungi do
  use Ecto.Schema
  import Ecto.Changeset
  alias Farm.Fungi


  schema "fungi" do
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(%Fungi{} = fungi, attrs) do
    fungi
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
