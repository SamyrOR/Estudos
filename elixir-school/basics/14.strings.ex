#Strings in Elixir are sequence of bytes
string = <<104, 101, 108, 108, 111>>
IO.puts string
## use if <<>> indicates to the compiler that it is a bytes
## if the binaries is not valid as string, this will turn only into bites
string <> <<0>>
IO.puts string

#Internally, strings are represented with a sequence of bytes, rather than an array of characters
#Elixir has also a char list type, with single quotes
IO.puts 'hełło'
#While the string is encoded in UTF-8, the char lists are in unicode

#Codepoints are one or more bytes
#Graphemes are multiple codepoints to represent a single character

#String functions
#length/1
IO.puts String.length string
#replace/3
IO.puts String.replace(string, "e", "a")
#duplicate/2 returns a new string repeated n types
IO.puts String.duplicate(string, 2)
#split/2 turn the strings into a list of strings
IO.puts String.split(string <> " World", " " )

#Exercise
defmodule Anagram do
  @moduledoc """
  Identify if two strings are anagrams
  """
  def anagram?(a, b) when is_binary(a) and is_binary(b) do
    sort_string(a) == sort_string(b)
  end

  def sort_string(string) do
    string |> String.downcase() |> String.graphemes() |> Enum.sort()
  end
end

IO.puts Anagram.anagram?("Samyr", "rymas") #true
IO.puts Anagram.anagram?(3, 5) #error
