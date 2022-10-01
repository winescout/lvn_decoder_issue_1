defmodule PhxAppWeb.Router do
  use PhxAppWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, {PhxAppWeb.LayoutView, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  scope "/", PhxAppWeb do
    pipe_through :browser

    live "/page", PageLive
  end
end
