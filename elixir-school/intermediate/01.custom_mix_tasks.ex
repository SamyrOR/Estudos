#to create a new custom mix task
#in the path project_name/lib/mix/tasks/custom_task_name.ex
#create a new module
defmodule Mix.Tasks.Hello do
  @moduledoc """
  The hello mix task `mix help hello`"
  """
  use Mix.Task

  @shortdoc "Simply calls the Hello.say/0 function"
  def run(_) do
    #This will start our application
    Mix.Task.run("app.start")
    #calling our Hello.say() function from earlier
    Hello.say()
  end
end
