#Elixir has many ways to treat erros
#But here are some conventions:
#For erros that are part of the regular operation of a functions
#(e.g. a user entered a wrong type of date), a function returns {:ok, result} and {:error, reason}

#But for erros that are not part of normal operations (e.g. being unable to parse configuration data)
#you throw a exception

#Here are the treatment with exceptions

#to throw a error we simple could use raise/1
raise "Oh no!"

#to specify type and message, raise/2
raise ArgumentError, message: "The argument value is invalid"

#whe we know an error may occur, we can handle with try/rescue / like try/catch
try do
  raise "Oh no!"
rescue
  e in RuntimeError -> IO.puts("An error ocurred: #{e.message}")
end

#we also could match multiple erros in a single rescue
try do
  opts
  |> Keyword.fetch!(:source_file)
  |> File.read!()
rescue
  e in KeyError -> IO.puts "missing :source_file option"
  e in File.Error -> IO.puts "unable to read source file"
#after is used to run in the end regardless error or not
#is commonly used with files or connections that should be closed
after
  IO.puts "The end!"
end

#we can create new erros with defexception/1
defmodule ExampleError do
  defexception message: "an example error has ocurred"
end
raise ExampleError

#also Elixir supports throw and try/catch, but it is uncommon

#we have exit/1 in case a process dies and are important
#but in almost all cases is better let the supervisor handle the process exit
