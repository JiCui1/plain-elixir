defmodule Example do
  use Application

  # create a global const value that cannot be overwritten in def 
  @x 10 #although this can be overwritten below with @x 10


  def start(_type, _args) do
    Example.main()
    # All this allows the function to run each time we do mix run
    Supervisor.start_link([], strategy: :one_for_one)
  end

  def main() do 
    IO.puts(@x)
  end
end
