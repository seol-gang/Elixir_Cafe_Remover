defmodule Loader do
  def get_account do
    with {:ok, body} <- File.read("./account.json"),
         {:ok, json} <- Poison.decode(body),
         do: {:ok, json}
  end

  def get_selector do
    with {:ok, body} <- File.read("./selector.json"),
         {:ok, json} <- Poison.decode(body),
         do: {:ok, json}
  end
end
