defmodule Web do
  def open do
    {:ok, session} = Wallaby.start_session()
    session
  end
end
