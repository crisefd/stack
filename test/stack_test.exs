defmodule StackTest do
  use ExUnit.Case
  doctest Stack
  alias Stack.Impl

  test "can pop the stack" do
    initial_stack = [1,2]
    res1 = Impl.pop initial_stack
    assert 1 === res1.result
    res2 = Impl.pop res1.stack
    assert 2 === res2.result
    assert [] === res2.stack
  end

  test "can push the stack" do
    initial_stack = []
    res = Impl.push 0, initial_stack
    assert [0] === res.result
  end

  test "can peek the stack" do
    initial_stack = [1, 2]
    res = Impl.peek  initial_stack
    assert 1 === res.result
    assert initial_stack === res.stack
  end

  test "can check if stack is empty" do

    res1 = Impl.empty? [1, 2]
    refute res1.result

    res2 = Impl.empty? []
    assert res2.result
  end



end
