#List
list = [3.14, :pie, "Apple"];
#They are linked lists, so is fast to prepend O(1)
#But linear to append
#Prepend
["prepend" | list]
#Append
list ++ ["Cherry"];
#Concatenation ++/2
[1,2] ++ [3,4,1];
#Subtraction --/2
["foo", :bar, 42] -- [42, "bar"];
#The subtraction use strict comparison
#List Head
hd list;
tl list;

#Tuples
#Are fast to access length, but expensive to modification
tuple = {3.14, :pie, "Apple"};
#Is common in returning more than one value;

#Keyword lists
#Keys are atoms
#Keys are ordered
#Keys do not have to be unique
#Commonly used to pass options to functions
keywordList = [foo: "bar", hello: "world" ];

#Maps
map = %{:foo => "bar", "hello" => :world}
map[:foo] #"bar"
map["hello"] #:world
#foo: == :foo
map.foo; #"bar
# To update a value of a key you can do
map = %{map| foo: "baz"}; # this syntax create a new map
# to add a new key you can do Map.put/3
Map.put(map, :name, 'samyr');
