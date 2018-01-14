defmodule Farm.Plot do
  use Ecto.Schema
  import Ecto.Changeset
  alias Farm.Plot


  schema "plots" do
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(%Plot{} = plot, attrs) do
    plot
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
