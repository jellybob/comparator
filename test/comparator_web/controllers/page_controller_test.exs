defmodule ComparatorWeb.PageControllerTest do
  use ComparatorWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert redirected_to(conn, :found) =~ "/reviews"
  end
end
