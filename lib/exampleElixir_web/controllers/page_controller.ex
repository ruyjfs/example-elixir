defmodule ExampleElixirWeb.PageController do
  use ExampleElixirWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
