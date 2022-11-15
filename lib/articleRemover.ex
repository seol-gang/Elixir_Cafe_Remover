defmodule NaverCafeRemover.ArticleRemover do
  use Task

  def start(_type, _args) do
    Task.start_link(&run/0)
  end

  def run do
    Web.open
      |> Login.loginNaver
  end
end
