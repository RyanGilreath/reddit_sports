defmodule RedditUiWeb.PageController do
  use RedditUiWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
