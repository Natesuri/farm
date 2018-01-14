defmodule Farm.Repo.Migrations.CreateFlora do
  use Ecto.Migration

  def change do
    create table(:flora) do
      add :name, :string

      timestamps()
    end

  end
end
