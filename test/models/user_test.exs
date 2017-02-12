defmodule ElixirBlog.UserTest do
  use ElixirBlog.ModelCase

  alias ElixirBlog.User

  @valid_attrs %{email: "some content", password: "test123", password_confirmation: "test123", username: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = User.changeset(%User{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = User.changeset(%User{}, @invalid_attrs)
    refute changeset.valid?
  end
end
