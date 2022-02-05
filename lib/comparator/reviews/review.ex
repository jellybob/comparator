defmodule Comparator.Reviews.Review do
  use Ecto.Schema
  import Ecto.Changeset

  schema "reviews" do
    field :body, :string
    field :rating, :integer
    field :recommended, :boolean, default: false
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(review, attrs) do
    review
    |> cast(attrs, [:title, :rating, :recommended, :body])
    |> validate_required([:title, :rating, :recommended, :body])
  end
end
