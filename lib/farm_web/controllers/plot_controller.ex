defmodule FarmWeb.PlotController do
  use FarmWeb, :controller

  #def index(conn, _params) do
  #  render conn, "index.html"
  #end

  def index(conn, _params) do
  conn
  |> assign(:message, "Farmer Nate")
  |> render("index.html")
  end

  def show(conn, %{"id" => id}) do
    html conn, """
    <html>
        <head>
           <title>Passing an Id</title>
        </head>
        <body>
          <p>You sent in id #{id}</p>
        </body>
      </html>
      """

  end
end
