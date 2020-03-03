defmodule CPortfolio.Repo do
  use Ecto.Repo,
    otp_app: :c_portfolio,
    adapter: Ecto.Adapters.Postgres
end
