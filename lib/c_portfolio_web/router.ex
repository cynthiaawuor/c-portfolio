defmodule CPortfolioWeb.Router do
  use CPortfolioWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", CPortfolioWeb do
    pipe_through :browser
     
    get "/", PageController, :index
    get "/about", AboutController, :index
    get "/contact", ContactController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", CPortfolioWeb do
  #   pipe_through :api
  # end
end
