defmodule CPortfolioWeb.MainpageController do
	use CPortfolioWeb, :controller

	def index(conn, _params) do
		render(conn, "index.html")
	end
end