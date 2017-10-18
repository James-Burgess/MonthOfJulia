
#we can call for loops with 'in' or with '='
for i in 1:5
    print(i, ", ")
end
#> 1, 2, 3, 4, 5, 

# In loop definitions "in" is equivilent to "="
for i = 1:5
    print(i, ", ")
end
println() 
#> 1, 2, 3, 4, 5, 

# Multiple nested for loops can be combined into a single outer loop, forming the cartesian product of its iterables:
for i = 1:2, j = 3:4
           println((i, j))
end
#>(1, 3)
#>(1, 4)
#>(2, 3)
#>(2, 4)

a1 = [1,2,3,4]

# arrays can also be looped over directly:
for i in a1
    print(i, ", ")
end
println() 
#> 1, 2, 3, 4, 

# the alternative keyword in or ∈ is typically used instead of =, since it makes the code read more clearly:
for s ∈ ["foo","bar","baz"]
           println(s)
end
#>foo
#>bar
#>baz

# like python enumerate can be used to get both the index and value in a loop
a3 = ["one", "two", "three"]
for (i, v) in enumerate(a3)
    print(i, ": ", v, ", ")
end
println() #> 1: one, 2: two, 3: three, 

# (note enumerate starts from 1 since Julia arrays are 1 indexed unlike python)(which is not cool)

# continue and break work in the same way as python
a2 = collect(1:20)
for i in a2
    if i % 2 != 0
        continue
    end
    print(i, ", ")
    if i >= 8
        break
    end
end
println() 
#> 2, 4, 6, 8, 

#the while loop works much like you would expect
a = []
i = 0
while i <= 20
    push!(a, i)
    i += 1
end
println(a)

# if the array is being manipulated during evaluation a while loop shoud be used
# pop removes the last element from an array
while !isempty(a1)
    print(pop!(a1), ", ") #pop! will return the item being deleted
end
println() #> 4, 3, 2, 1,

# map works as you might expect performing the given function on each member of an array or iter much like comprehensions
a = [1,2,3,7]
#think of it like x becomes x^2 in array a of x's
#map({variable} -> {function} , {array})
a4 = map((x) -> x^2, a)
print(a4) #> 4-element Array{Int64,1}: [1,4,9,49]
