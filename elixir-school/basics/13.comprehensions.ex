#Comprehensions are syntax sugar for loop Enum
list = [1,2,3,4,5]
#the generator x <- means that the x inside the list will do what is in do:
for x <- list, do: IO.puts x*x

#for in a keyword lists
for {_key, val} <- [one: 1, two: 2, three: 3], do: IO.puts val

#for in a map
for {k, v} <- %{"a" => "A", "b" => "B"}, do: {k, v}

#for also do pattern matching
for {:ok, val} <- [ok: "Hello", error: "Unknown", ok: "World"], do: IO.puts val

#we also could use multiple generators creating a nested loop
for n <- list, times <- 1..n, do: IO.puts "#{n} - #{times}"

#Filters
#filters is like guards, they filter values and prevents false and nil at the final result
#they are placed after the generator
for x <- 1..100, is_even(x), rem(x, 3) == 0, do: x

#:into Transform the data into another structure that implements Collectable
for {k, v} <- [one: 1, two: 2, three: 3], into: %{}, do: {k, v}
