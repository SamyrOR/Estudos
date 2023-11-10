#if, obs: the only falsy values are nil and false
if String.valid?("Hellod") do
    "Valid string!"
else
  "Invalid string."
end

#unless is the negative form of if
unless is_integer("hello") do
  "Not an Int"
end

#case is like switch case
IO.puts(case {:ok, "Hello World"} do
  {:ok, result} -> result
  {:error} -> "Uh oh!"
  _ -> "Catch all"
end
)
#the _ is default case, when no matches happen
#we can also use guard clauses
IO.puts(case {1, 2,3} do
  {1,x,3} when x > 0 -> "Will match"
  _ -> "Won't match"
end)

#cond/1
#cond is like a else if
IO.puts(
  cond do
    2 + 2 == 5 -> "This will not be true"
    2 * 2 == 3 -> "Nor this"
    1 + 1 == 2 -> "But this will"
  end
)
#in cond/1 the default case is a true condition
IO.puts(
  cond do
     7 + 1 == 0 -> "Incorrect"
     true -> "Catch all"
  end
)

#with/1
#The with operator, is way better than when you have a nested case scenario
#WRONG WITH case/2 NESTED
case Repo.insert(changeset) do
  {:ok, user} ->
    case Guardian.encode_and_sign(user, :token, claims) do
      {:ok, token, full_claims} -> important_stuff(token, full_claims)
      error -> error
    end
    error -> error
end
#RIGHT WITH  with/1
with {:ok, user} <- Repo.insert(changeset),
     {:ok, token, full_claims} <- Guardian.encode_and_sign(user, :token, claims) do
      important_stuff(token, full_claims)
end
#if the expression fails to match, the non-matching value will be returned
#also we can make a else statement inside
