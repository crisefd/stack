defmodule Stack.Server do
  use GenServer
  alias Stack.Impl

  def init(initial_stack), do: {:ok, initial_stack}

  def terminate() do

  end

  def handle_call(:pop, _from, stack) do
    result = Impl.pop stack
    {:reply, result.result, result.stack }
   end

  def handle_call(:empty?, _from, stack) do
    result = Impl.empty? stack
    {:reply, result.result, result.stack }
  end

  def handle_call(:peek, _from, stack) do
    result = Impl.peek stack
    {:reply, result.result, result.stack }
  end

  def handle_cast({:push, item}, stack) do
    result = Impl.push item, stack
    {:noreply, result.result}
  end


end
