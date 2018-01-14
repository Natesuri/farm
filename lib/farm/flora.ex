defmodule Farm.Flora do
  use Ecto.Schema
  import Ecto.Changeset
  alias Farm.Flora


  schema "flora" do
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(%Flora{} = flora, attrs) do
    flora
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
