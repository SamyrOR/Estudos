#sigils are syntax sugars, and we can build our own
#some built in sigils
#~C list of characters with no escaping or interpolation
#~c list of characters with escaping and interpolation
#~R a regex with no escaping or interpolation
#~r a regex with escaping and interpolation
#~S a string with no escaping or interpolation
#~s a string with escaping and interpolation
#~W word list with no escaping or interpolation
#~w world list with escaping and interpolation
#~N a NaiveDateTime struct
#~U DateTime struct

#Char List
#~C don't interpolate
IO.puts ~C/2 + 7 = #{2 + 7}/
#~c interpolate the calculation
IO.puts ~c/2 + 7 = #{2 + 7}/

#Regular Expressions
re = ~r/elixir/
IO.puts "Elixir"=~ re
#to match case sensitive we use /i at the end
re = ~r/elixir/i
IO.puts "Elixir"=~ re
#we also have a Regex API built on top Erlang's regex library
#Regex.split/2
string = "100_000_000"
IO.puts Regex.split(~r/_/, string)

#String
#~S don't interpolate
IO.puts ~S/welcome to elixir #{String.downcase "School"}/
#~s interpolate the function
IO.puts ~s/welcome to elixir #{String.downcase "School"}/

#Word List
#~W don't interpolate
IO.puts ~W/i love #{'e'}lixir school/
#~w interpolate
IO.puts ~w/i love #{'e'}lixir school/

#NaiveDateTime, are useful for quickly create a struct to represent a DateTime without a timezone
IO.puts(NaiveDateTime.from_iso8601("2023-11-11 22:30:00") == {:ok, ~N[2023-11-11 22:30:00]})

#DateTime, is useful for quickly create a struct to represent a DateTime with UTC timezone
IO.puts(DateTime.from_iso8601("2023-11-11 22:30:00Z") == {:ok, ~U[2023-11-11 23:30:00Z], 0})

#Custom Sigils
#We can create our own sigils, even with more then one character
#they just need to be set all in uppercase
defmodule MySigils do
  def sigil_REV(string, []), do: String.reverse(string)
end

import MySigils

IO.puts ~REV<foobar>
