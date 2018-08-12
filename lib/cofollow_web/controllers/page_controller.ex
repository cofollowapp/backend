defmodule CofollowWeb.PageController do
  use CofollowWeb, :controller

  def index(conn, _params) do
    text(conn, "Go away nothing is here")
  end
end
