defmodule Web do
  def open do
    try do
      {:ok, session} = Wallaby.start_session
      session
    catch
      x -> IO.puts(x)
    end
  end
end
