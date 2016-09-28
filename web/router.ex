defmodule Streams.Router do
  use Streams.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
    plug :fetch_session
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  scope "/api", Streams do
    pipe_through :api # Use the default browser stack
  end

  # Other scopes may use custom stacks.
  # scope "/api", Streams do
  #   pipe_through :api
  # end
end
