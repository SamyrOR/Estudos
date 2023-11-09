#Numbers
int = 255;
binary = 0b0110;
octal = 0o644;
hexadecimal = 0x1F

float = 3.14;
doublePrecision = 1.0e-10;

#Booleans
bool = true;

#Atoms
#It is a constant that the name is it value
:foo;
#Booleans also are atoms
is_atom(true)
is_boolean(:true)
#Module name are also atoms
is_atom(MyApp.MyModule)
#Atoms also reference modules from Erlang libraries
:crypto.strong_rand_bytes(3)

#Strings
hello = "Hello";
IO.puts("hello\nworld")

#String Interpolation
name = "Samyr";
IO.puts("Hello #{name}");

#String Concatenation
name = "Samyr";
IO.puts("Hello " <> name);

#Basic Operations
#Arithmetic
2+2;
2-1;
2*5;
10/5;
IO.puts(div(10,5));
IO.puts(rem(10,3)); # equivalent to % in JS

#Logical operators
-20 || true;
42 && true
42 && nil;
!42;
!false;
#These ones the first argument must be a boolean
true and 42
false or true;
not false

#Comparison
1 > 2;
1 != 2;
2 == 2;
2 <=3;
#To strict comparison of integers and floats
2 == 2.0 #true
2 === 2.0 #false

#Any to types can be compared
# number < atom < reference < function < port < pid < tuple < map < list < bitstring
#Example
IO.puts(:hello > 99); #true
IO.puts({:hello, :world} > [1,2,3]); #false
