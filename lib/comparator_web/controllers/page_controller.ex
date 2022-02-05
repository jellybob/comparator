defmodule ComparatorWeb.PageController do
  use ComparatorWeb, :controller

  def index(conn, _params) do
    redirect(conn, to: Routes.review_path(conn, :index))
  end
end
