defmodule NaverCafeRemover.ArticleRemover do
  use Task

  import Wallaby.Browser

  def start(_type, _args) do
    Task.start_link(&run/0)
  end

  def run do
    {:ok, account} = Loader.get_account()

    Web.open()
    |> Login.naver(account)
    |> visit(account["cafe_url"])
  end
end
