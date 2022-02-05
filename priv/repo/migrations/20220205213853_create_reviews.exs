defmodule Comparator.Repo.Migrations.CreateReviews do
  use Ecto.Migration

  def change do
    create table(:reviews) do
      add :title, :string
      add :rating, :integer
      add :recommended, :boolean, default: false, null: false
      add :body, :text

      timestamps()
    end
  end
end
