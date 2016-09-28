defmodule Streams.Feed do
  use Streams.Web, :model

  schema "feeds" do
    field :count, :integer

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:count])
    |> validate_required([:count])
  end
end
