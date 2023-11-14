#Concurrency
#is the ability of a process communicate with in others
#through message passing.
defmodule Example do
  def add(a,b) do
    IO.puts(a + b)
  end
end
#to evaluate the function asynchronously we use spawn/3
#this create a new process, from a anonymous or named function
spawn(Example, :add, [2, 3])

#To communicate
#to send message we use send/2
#and receive we use receive
defmodule Example2 do
  def listen do
    receive do
      {:ok, "hello"} -> IO.puts "World"
    end

    listen()
  end
end
pid = spawn(Example2, :listen, [])
send(pid, {:ok, "hello"})
#notice that the listen is recursive, if not, it will receive only one message and exist
#this don't know if the process crash

#spawn_link
#one way to identify if the process crash is with spawn_link
#the linked process will notify if one or other exits
defmodule Example3 do
  def explode, do: exit(:kaboom)
end
spawn_link(Example3, :explode,[])

#Process.flag/2 and :trap_exit flag
#if we don't want a process crash the current one
#we should use Process.flag/2 and the :trap_exit flag
#we still knowing that the other process crashed, without crash our one
defmodule Example4 do
  def explode, do: exit(:kaboom)

  def run do
    Process.flag(:trap_exit, true)
    spawn_link(Exampl4, :explode, [])

    receive do
      {:EXIT, _from_pid, reason} -> IO.puts("Exit reason: #{reason}")
    end
  end

end
Example4.run()

#spawn_monitor
#we also have another alternative, if we want keep monitoring
#don't wanna link, either explicit set trap exits'
#we are able to use spawn_monitor to just kept informed
defmodule Example5 do
  def explode, do: exit(:kaboom)

  def run do
    spawn_monitor(Example5, :explode, [])
  end

  receive do
    {:DOWN, _ref, :process, _from_pid, reason} -> IO.puts("Exit reason: #{reason}")
  end
end
Example5.run()

#Agents
#they are abstraction around background process maintaining state
{:ok,agent} = Agent.start_link(fn -> [1,2,3] end)
Agent.update(agent, fn (state) -> state ++ [4, 5] end)
Agent.get(agent, &(&1))

#Tasks
#they are asynchronous functions, that don't block the application execution
#useful in expensive operations
defmodule Example6 do
 def double(x) do
   :timer.sleep(2000)
   x * 2
 end
end
task = Task.async(Example, :double, [2])
Task.await(task)
