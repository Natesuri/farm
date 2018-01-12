defmodule FarmWeb.Router do
  use FarmWeb, :router

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

  scope "/", FarmWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/plots", PlotController, :index
    get "/our_path/:id", PlotController, :show
    # get "/our_path/:id", PlotController, :index
    resources "/users", UserController
    resources "/plots", PlotController
    resources "/flora", FloraController
    resources "/fauna", FaunaController
    resources "/fungi", FungiController
  end

  # Other scopes may use custom stacks.
  scope "/api", FarmWeb do
    pipe_through :api

    resources "/reviews", ReviewController
  end
end
