defmodule Login do
  import Wallaby.Browser
  import Wallaby.Query

  def naver(session, account) do
    session
    |> visit("https://nid.naver.com/nidlogin.login")
    |> assert_has(text_field("id"))
    |> execute_script(
      "(function execute(){ document.querySelector('#id').value = \"#{account["id"]}\"; document.querySelector('#pw').value = \"#{account["pw"]}\";})();"
    )
    |> click(css(".btn_login"))
  end
end
