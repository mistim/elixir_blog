defmodule ElixirBlog.Post do
  use ElixirBlog.Web, :model

  schema "posts" do
    field :title, :string
    field :body, :string

    timestamps()

    # relations
    belongs_to :user, ElixirBlog.User
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title, :body])
    |> validate_required([:title, :body])
  end
end
