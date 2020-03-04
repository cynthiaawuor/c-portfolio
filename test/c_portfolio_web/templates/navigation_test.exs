defmodule CPortfolioWeb.NavigationTest do
	use CPortfolioWeb.ConnCase, async: true


	test "user sees Welcome to my portfolio when signin", %{conn: conn} do
		conn = get(conn, "/")
		assert html_response(conn, 200)=~ "Welcome to My Portfolio!"
	end
end
