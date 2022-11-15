defmodule Login do
  import Wallaby.Chrome

  def loginNaver(session) do
    session
     |> visit("https://naver.com")
  end
end
