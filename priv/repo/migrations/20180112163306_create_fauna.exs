defmodule Farm.Repo.Migrations.CreateFauna do
  use Ecto.Migration

  def change do
    create table(:fauna) do
      add :name, :string

      timestamps()
    end

  end
end
