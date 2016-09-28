defmodule Streams.Repo.Migrations.CreateFeed do
  use Ecto.Migration

  def change do
    create table(:feeds) do
      add :count, :integer

      timestamps()
    end

  end
end
