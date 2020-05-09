defmodule Colly.Collab.Item do
  use Ecto.Schema
  import Ecto.Changeset

  schema "items" do
    field :content, :string
    field :dislikes_count, :integer, default: 0
    field :likes_count, :integer, default: 0
    field :name, :string, default: "Item"

    timestamps()
  end

  @doc false
  def changeset(item, attrs) do
    item
    |> cast(attrs, [:content])
    |> validate_required([:content])
    |> validate_length(:content, min: 2, max: 200)
  end
end