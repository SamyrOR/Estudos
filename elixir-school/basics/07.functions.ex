#Anonymous function begin with fn and finalize with end
sum = fn(a, b) -> a + b end
IO.puts(sum.(2,3))

#the & capture operator, allows us to shorthand the declaration
sum = &(&1 + &2)
IO.puts(sum.(3, 3))
#the inputs are captured by &1, &2 and so on

#pattern matching can also be applied to functions signatures
#pattern matching is only when the function have the same number of arguments
#a function could have "various" statements
handle_result = fn
    {:ok, result} -> IO.puts "Handling result..."
    {:ok, _} -> IO.puts "This would be never run as previous will be matched beforehand"
    {:error} -> IO.puts "An error has ocurred!"
end
some_result = 1
handle_result.({:ok, some_result})
handle_result.({:error})

#named functions are always inside a module, using def, and do
#this next example is used pattern matching and recursion
#also this have the do: to shorthand if our function have only one line
defmodule Length do
   def of([]), do: 0
   def of([_ | tail]), do: 1 + of(tail)
end
IO.puts Length.of []
IO.puts Length.of [1, 2, 3]

#when we have the functions definitions with different arguments
#this become the arity
defmodule Greeter2 do
    def hello(), do: "Hello, anonymous person!" #hello/0
    def hello(name), do: "Hello, " <> name #hello/1
    def hello(first_name, second_name), do: "Hello, #{first_name} and #{second_name}" #hello/2
end
IO.puts Greeter2.hello()
IO.puts Greeter2.hello("Samyr")
IO.puts Greeter2.hello("Samyr", "Patty")

#the pattern matching can be also performed in the function param
defmodule Greeter1 do
  def hello(%{name: person_name}) do
    IO.puts "Hello, #{person_name} greeter1"
  end
end
fred = %{name: "Samyr", age: "28", favorite_color: "Blue"}
Greeter1.hello(fred);
#but if we need to keep the entire map, we can pattern matching the map with the value we expect like this
#functions pattern-match the data passed in to each of its arguments independently, we can use this to bind values to separate variables within the function
defmodule Greeter3 do
  def hello(%{name: person_name} = person) do
    IO.puts("Hello #{person_name}, greeter 3" )
    IO.inspect(person)
  end
end
Greeter3.hello(fred)
#If we pass a argument that doesn't match, the function will return a error

#private functions are defined with defp
defmodule Greeter4 do
  def hello(name), do: phrase() <> name <> " greeter 4"
  defp phrase, do: "Hello "
end
IO.puts Greeter4.hello("Samyr")

#guard determinate which function signature use
defmodule Greeter5 do
  def hello(names) when is_list(names) do
    #passed here first
    names = Enum.join(names, ", ")
    #call again with a string only
    hello(names)
  end

  def hello(name) when is_binary(name) do
    #falls here
    "Hello #{name}, greeter 5"
  end
end
IO.puts Greeter5.hello(["Samyr", "Patty"])

#we can declare default arguments with \\
defmodule Greeter6 do
  def hello(name, language_code \\ "en") do
   phrase(language_code) <> name <> " greeter 6"
  end

  defp phrase("en"), do: "Hello, "
  defp phrase("pt"), do: "Oi, "
end
IO.puts Greeter6.hello("Samyr")
IO.puts Greeter6.hello("Samyr", "pt")
#if we need to declare more than one default argument to more then one signature we could declare it in a head function
defmodule Greeter7 do
  #head function
  def hello(names, language_code \\ "en")

  def hello(names, language_code) when is_list(names) do
    names = Enum.join(names, ", ")

    hello(names, language_code)
  end

  def hello(name, language_code) when is_binary(name) do
    phrase(language_code) <> name <> " greeter7"
  end

  defp phrase("en"), do: "Hello, "
  defp phrase("pt"), do: "Oi, "
end
IO.puts Greeter7.hello("Samyr")
IO.puts Greeter7.hello("Samyr", "pt")
