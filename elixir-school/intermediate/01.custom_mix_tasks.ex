# to create a new custom mix task
# in the path project_name/lib/mix/tasks/custom_task_name.ex
# create a new module
defmodule Mix.Tasks.Hello do
  @moduledoc """
  The hello mix task `mix help hello`"
  """
  use Mix.Task

  @shortdoc "Simply calls the Hello.say/0 function"
  def run(_) do
    # This will start our application
    Mix.Task.run("app.start")
    # calling our Hello.say() function from earlier
    Hello.say()
  end
end

# the task also can receive arguments
# its receive a list and could be used
defmodule Mix.Tasks.Hello do
  @moduledoc """
  The hello mix task `mix help hello`"
  """
  use Mix.Task

  @shortdoc "Simply calls the Hello.say/0 function"
  def run(args) do
    ["arg1", "arg2", "arg2"]
    # This will start our application
    Mix.Task.run("app.start")
    # iterate over each arguments receive on the list
    args |> Enum.map(&IO.puts(&1))
  end
end
