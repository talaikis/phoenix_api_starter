defmodule PhoenixApiWeb.Router do
  use PhoenixApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/" do
    pipe_through :api

    forward "/graphiql", Absinthe.Plug.GraphiQL,
      schema: PhoenixApiWeb.Schema,
      interface: :simple,
      context: %{pubsub: PhoenixApiWeb.Endpoint}
  end
end
