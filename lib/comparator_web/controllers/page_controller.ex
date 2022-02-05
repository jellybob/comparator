defmodule ComparatorWeb.PageController do
  use ComparatorWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
