#The assign operator = could be also used to compare
#If the let element is a variable, this is assigned;
#Can also be used with other collections
x = 1;
#If in the left is a value, and match with the variable, return the value
IO.puts(1 = x);
#If in the left is a value that doesn't match the operator, it throws a error
# IO.puts(2 = x);

#The pint operator ^ prevent the variable to be reassigned if it's in left side
x = 1;
#Returns error, because it's won't will reassign and will compare, but x is 1
# IO.puts(^x = 2);

#Can also be used in keys and function clauses
greeting = "Hello";
greet = fn (^greeting, name) -> "Hi #{name}"
            (greeting, name) -> "#{greeting}, #{name}"
            end
IO.puts(greet.("Hello", "Samyr"))
IO.puts(greet.("Morning", "Samyr"))
