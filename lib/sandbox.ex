defmodule Sandbox do

  def main(url) do

  Task.async
    response = HTTPoison.get!(url)
    IO.inspect response
  end

  def hello do

    p = fn ->
      receive do
        a -> IO.puts a
      end
    end

    pid = spawn p

    a = IO.gets "$"

    send(pid, a)
    send(pid, a)
    send(pid, a)
    send(pid, a)
    send(pid, a)

    IO.inspect Process.alive?(pid)
    hello()
  end

end
