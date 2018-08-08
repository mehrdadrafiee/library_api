defmodule LibraryApiWeb.Router do
  use LibraryApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", LibraryApiWeb do
    pipe_through :api
    get "/", StatusController, :index
  end
end
