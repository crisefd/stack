defmodule Stack do
  @moduledoc false
  use Application

  def start(_type, _args) do
    initial_stash = Application.get_env :stack, :initial_stash
    children = [
     { Stack.Stash, initial_stash},
     { Stack.Api, nil },
    ]
    opts = [ strategy: :rest_for_one, name: Sequence.Supervisor ]
    Supervisor.start_link children, opts
  end

end
