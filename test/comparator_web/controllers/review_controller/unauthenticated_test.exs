defmodule ComparatorWeb.ReviewController.UnauthenticatedTest do
  use ComparatorWeb.ConnCase

  import Comparator.ReviewsFixtures

  @create_attrs %{body: "some body", rating: 42, recommended: true, title: "some title"}
  @update_attrs %{body: "some updated body", rating: 43, recommended: false, title: "some updated title"}
  @invalid_attrs %{body: nil, rating: nil, recommended: nil, title: nil}

  describe "index" do
    test "lists all reviews", %{conn: conn} do
      conn = get(conn, Routes.review_path(conn, :index))
      assert html_response(conn, 200) =~ "Listing Reviews"
    end
  end

  describe "new review" do
    test "asks the user to log in", %{conn: conn} do
      conn = get(conn, Routes.review_path(conn, :new))
      assert redirected_to(conn, :found) =~ "/users/log_in"
    end
  end

  describe "create review" do
    test "asks the user to log in", %{conn: conn} do
      conn = post(conn, Routes.review_path(conn, :create), review: @create_attrs)
      assert redirected_to(conn, :found) =~ "/users/log_in"
    end
  end

  describe "edit review" do
    setup [:create_review]

    test "asks the user to log in", %{conn: conn, review: review} do
      conn = get(conn, Routes.review_path(conn, :edit, review))
      assert redirected_to(conn, :found) =~ "/users/log_in"
    end
  end

  describe "update review" do
    setup [:create_review]

    test "asks the user to log in", %{conn: conn, review: review} do
      conn = put(conn, Routes.review_path(conn, :update, review), review: @update_attrs)
      assert redirected_to(conn, :found) =~ "/users/log_in"
    end
  end

  describe "delete review" do
    setup [:create_review]

    test "asks the user to log in", %{conn: conn, review: review} do
      conn = delete(conn, Routes.review_path(conn, :delete, review))
      assert redirected_to(conn, :found) =~ "/users/log_in"
    end
  end

  defp create_review(_) do
    review = review_fixture()
    %{review: review}
  end
end
