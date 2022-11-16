defmodule NaverCafeRemover.MixProject do
  use Mix.Project

  def project do
    [
      app: :naver_cafe_remover,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      releases: releases(),
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {NaverCafeRemover.ArticleRemover, []}
    ]
  end

  def releases() do
    [
      naver_cafe_remover: [
        applications: [ex_unit: :permanent]
      ],
      include_executables_for: [:unix]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:wallaby, "~> 0.30.0"},
      {:poison, "~> 5.0"}
    ]
  end
end
