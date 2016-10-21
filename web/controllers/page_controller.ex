defmodule Mrfeeny.PageController do
  use Mrfeeny.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
