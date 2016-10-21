defmodule Mrfeeny.Repo.Migrations.CreateStudents do
  use Ecto.Migration

  def change do
    create table(:students) do
      add :name, :string, null: false
    end
  end
end
