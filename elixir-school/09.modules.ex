#Modules allow us to organize functions into a namesapce
#basic
defmodule Example do
  def greeting(name) do
    "Hello #{name}"
  end
end
IO.puts Example.greeting("world")
#you can also nest moduels
defmodule Example.Greetings do
  def morning(name) do
    "Good morning #{name}"
  end

   def evening(name) do
    "Good night #{name}"
   end
end
IO.puts Example.Greetings.morning("Samyr")
#modules attributes are mostly used as constants
defmodule Example2 do
  @greeting "Hello"
  def greeting(name) do
  ~s(#{@greeting} #{name} example2.)
  end
end
IO.puts Example2.greeting("Samyr")
#another utils reserved attributes moduledoc, doc, behaviour

#Structs
#structs are like objects, they define keys and values
#they have a structure of a map, and is declared inside a module
#its common to be the only thing at the module
defmodule Example.User do
  defstruct name: "Sean", roles: []
end
IO.puts(%Example.User{})
IO.puts(%Example.User{name: "Samyr", roles: [:manager]})
#you can update structures like in a map
steve = %Example.User{name: "Steve"}
#update
samyr = %{steve | name: "Samyr"}
IO.puts samyr
#we also could match structs against maps
IO.puts %{name: "Samyr"} = samyr
#and we can hide some properties
defmodule Example2.User do
  @derive {Inspect, only: [:name]} #instead only also we have except
  defstruct name: "Samyr", roles: []
end


#Composition, add existing functionally to existing modules
#in composition we could use alias
defmodule Saying.Greetings do
  def basic(name), do: "Hi, #{name} alias greeting"
end
defmodule Example3 do
  #create the alias
  alias Saying.Greetings
  def greeting(name), do: Greetings.basic(name)
end
#we can name the alias
defmodule Example4 do
  alias Saying.Greetings, as: Hi
  #also we can alias multiple modules at once
  #alias Sayings.{Greetings, Farewells}
  def greeting(name), do: Hi.basic(name)
end

#import
import List
#filtering
#only
import List, only: [last: 1]
#except
import List, except: [last: 1]
import List, only: :functions
import List, only: :macros

#require, allows to use macros, but not functions
defmodule Example5 do
  require SuperMacros
  SuperMacros.do_stuff
end

#use enable another module to modify the current module definition
defmodule Hello do
  defmacro __using__(_opts) do
    greeting = Keyword.get(opts, :greeting, "Hi")
  quote do
    def hello(name), do: unquote(greeting) <> ", " <> name
  end
  end
end

defmodule Example6 do
  use Hello, greeting: "Hola"
end
