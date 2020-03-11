defmodule CPortfolioWeb.NavigationTest do
	use CPortfolioWeb.ConnCase


	test "user sees Welcome to my portfolio on the first page", %{conn: conn} do
		conn = get(conn, "/")
		assert html_response(conn, 200)=~ "Welcome to My Portfolio"
	end
end
