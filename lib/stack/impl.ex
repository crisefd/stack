defmodule Stack.Impl do

  def pop([]), do: %{result: nil, stack: []}
  def pop(stack), do: %{result: hd(stack), stack: tl(stack)}

  def peek(stack), do: %{result: hd(stack), stack: stack}

  def empty?([]), do: %{result: true, stack: []}
  def empty?(stack), do: %{result: false, stack: stack}

  def push(item, stack), do: %{result: [item | stack], stack: stack}

end
