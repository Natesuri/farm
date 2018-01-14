defmodule Farm.Repo.Migrations.CreatePlots do
  use Ecto.Migration

  def change do
    create table(:plots) do
      add :name, :string

      timestamps()
    end

  end
end
