# the pipe operator | > allows us to pass the result of one expression to pass it away
#instead embed manu functions calls
#WRONG
foo(bar(baz(new_function(other_function()))))
#RIGHT
other_function() |> new_function() |> baz() |> bar() |> foo()

#Examples
IO.puts "Elixir rocks" |> String.split() # ["Elixir", "rocks"]

IO.puts "Elixir rocks" |> String.upcase() |> String.split() # ["ELIXIR", "ROCKS"]
#its also a best practice wrap with () when the function arity are greater then 1
#String.ends_with?/2 at this case
IO.puts "Elixir" |> String.ends_with?("ixir")# true
