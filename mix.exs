defmodule Exredis.Mixfile do
  use Mix.Project

  @version "0.2.5"

  def project do
    [app: :exredis,
     version: @version,
     elixir: "~> 1.0",
     name: "exredis",
     source_url: "https://github.com/artemeff/exredis",
     homepage_url: "https://hexdocs.pm/exredis",
     deps: deps(),
     package: package(),
     description: "Redis client for Elixir"]
  end

  # Configuration for the OTP application
  def application do
    [applications: [:eredis]]
  end

  # Dependencies
  defp deps do
    [{:eredis, github: "GrandCru/eredis"},
     {:benchfella, "~> 0.3.0", only: :dev},
     {:earmark, "~> 1.0.1", only: :dev},
     {:ex_doc, "~> 0.13.0", only: :dev}]
  end

  defp package do
    [maintainers: ["Yuri Artemev", "Joakim Kolsjö", "lastcanal", "Aidan Steele",
      "Andrea Leopardi", "Ismael Abreu", "David Rouchy", "David Copeland",
      "Psi", "Andrew Forward", "Sean Stavropoulos"],
     files: ["lib", "mix.exs", "README.md"],
     licenses: ["MIT"],
     links: %{"GitHub" => "https://github.com/artemeff/exredis"}]
  end
end
