defmodule Stack.Api do
  use GenServer # Seems hacky to put this here
 @server Stack.Server

 def start_link(init_stack) do
   GenServer.start_link(@server, init_stack, name: @server)
 end

 def init(_) do
  GenServer.call @server, :init
end

 def pop() do
  GenServer.call @server, :pop
end

def push(item) do
  GenServer.cast  @server, {:push, item}
end

def peek() do
  GenServer.call  @server, :peek
end

def empty?() do
  GenServer.call  @server, :empty?
end

end
