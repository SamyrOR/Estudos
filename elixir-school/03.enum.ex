#Enums have a lot of functions
#Are core in functional programming
#all?/2 Return bool if all items match the function bool
Enum.all?(["foo", "bar", "hello"], fn(s) -> String.length(s) == 3 end) #false; not all strings have 3 of length
Enum.all?(["foo", "bar", "hello"], fn(s) -> String.length(s) > 1 end) #true; all strings have length greater than 1

#any?/2 Return bool if at least one item evaluates to true;
Enum.any?(["foo", "bar", "hello"], fn(s) -> String.length(s) == 5 end) #true

#chunk_every/2 make possible break the collection into smaller groups
Enum.chunk_every([1,2,3,4,5,6], 2); #[[1,2], [3,4], [5,6]]

#chunk_by/2 group collection by a callback function, and return the groups on order of gathering
Enum.chunk_by(["one", "two", "three", "four", "five", "six"], fn(element) -> String.length(element) end);#[["one", "two"], ["three"], ["four", "five"] ["six"]]

#map_every/3, make the function work every n time
Enum.map_every([1, 2, 3, 4, 5 ,6, 7, 8], 3, fn -> el + 1000 end); #[1001, 2, 3, 1004, 5, 6, 1007, 8]

#each/2 execute the function in each element without creating a new collection (similar to forEach in JS)
# return the atom at the end:ok
Enum.each(["one", "two", "three"], fn(element) -> IO.puts(element) end)

#map/2 iterate in each element, and generate a new collection at the end
Enum.map([0, 1, 2, 3], fn(element) -> element -1 end) #[-1, 0, 1, 2]

#min/1 return the minor value
Enum.min([5, 3, 0, -1]) # -1
#min/2 return the minor, but if its empty return the value informed
Enum.min([5,3,0, -1], fn -> :bar end)

#max/1 return the major value in the collection
#max/2 does the same as minor/2
Enum.max([5, 3 ,0 ,-1]) #5

#filter/2 filter the collection with the conditional function passed
Enum.filter([1,2 ,3 ,4], fn(element) -> rem(element, 2) == 0 end); #[2,4]

#reduce/3 turn the collection into a single value, passing a accumulator, if not passed, the first element is used
Enum.reduce([1,2,3], 10, fn(el, acc) -> el + acc end) #16 with passing acc
Enum.reduce([1,2,3], fn(el, acc) -> el + acc end) #6 without passing the acc
Enum.reduce(["a","b", "c"], "1", fn(el, acc) -> el <> acc  end)# "cba1

#sort/1 use Erlang term ordering to determine the sorted order
Enum.sort([:foo, "bar", Enum, -1, 4])# [-1, 4, Enum, :foo, "bar"]
#sort/2 allows us to provide the sorting function
Enum.sort([%{:val => 4}, %{:val => 1}], fn(a, b) -> a[:val] > b[:val] end)# [%{val, 4}, ${val: 1}]
#sort/2 we can use :asc or :desc too
Enum.sort([2,3,1], :desc) #[3,2,1]

#uniq/1 remove duplicate from our enumerables
Enum.uniq([1,2,3,2,1,1,1,1,1,]) #[1,2,3]
#uniq_by/2 remove duplicates from provided function comparison
Enum.uniq([%{x: 1, y: 1}, %{x: 2, y: 1}, %{x: 3, y: 3}, fn coord -> coord.y end])#[%{x: 1, y: 1}, %{x: 3, y: 3}]

#Example with anonymous function
Enum.map([1,2,3], fn number -> number +3 end);

#Example with capture operator &, who transforms a anonymous function, ou capture another function hiding this name
Enum.map([1,2,3], &(&1 + 3))

#Example with capture function
plus_three = &(&1 + 3);
Enum.map([1,2,3], plus_three)

#Capture with a named function
defmodule Adding do
    def plus_three(number), do: number +3
end
#Without anonymous function without the capture operator
Enum.map([1,2,3], fn number -> Adding.plus_three() end)
#With the capture operator and capture variable
Enum.map([1,2,3], &Adding.plus_three(&1))
#With the capture operator skipping the variable (best)
Enum.map([1,2,3], &Adding.plus_three/1)
