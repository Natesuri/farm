defmodule Farm.Repo.Migrations.CreateFungi do
  use Ecto.Migration

  def change do
    create table(:fungi) do
      add :name, :string

      timestamps()
    end

  end
end
