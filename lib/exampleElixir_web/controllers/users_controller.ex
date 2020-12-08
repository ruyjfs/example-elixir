defmodule ExampleElixirWeb.UsersController do
  use ExampleElixirWeb, :controller

  def index(conn, _params) do
    json(conn, %{id: "AAaaa"})
  end

  def edit(conn, %{"id" => id}) do
    json(conn, %{id: id})
  end

  def new(conn, %{"id" => id}) do
    json(conn, %{id: id})
  end

  def create(conn, %{"id" => id}) do
    json(conn, %{id: id})
  end

  def show(conn, %{"id" => id}) do
    json(conn, %{id: id})
  end

  def delete(conn, %{"id" => id}) do
    json(conn, %{id: id})
  end

  # user_path  GET     /users           HelloWeb.UserController :index
  # user_path  GET     /users/:id/edit  HelloWeb.UserController :edit
  # user_path  GET     /users/new       HelloWeb.UserController :new
  # user_path  GET     /users/:id       HelloWeb.UserController :show
  # user_path  POST    /users           HelloWeb.UserController :create
  # user_path  PATCH   /users/:id       HelloWeb.UserController :update
  #            PUT     /users/:id       HelloWeb.UserController :update
  # user_path  DELETE  /users/:id       HelloWeb.UserController :delete
end
