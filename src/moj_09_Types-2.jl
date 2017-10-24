
# Subtypes will return an array of the children below the type
subtypes(Number)
#> 2-element Array{Union{DataType, UnionAll},1}:
#> Complex
#> Real   

subtypes(Real)
#> 4-element Array{Union{DataType, UnionAll},1}:
#>  AbstractFloat
#>  Integer      
#>  Irrational   
#>  Rational     

println(subtypes(AbstractFloat))
#>Union{DataType, UnionAll}[BigFloat, Float16, Float32, Float64]

println(subtypes(Integer))
#>Union{DataType, UnionAll}[BigInt, Bool, Signed, Unsigned]

#to access elements in the array, just iter through
for a in (subtypes(Number))
    println(a)
end
#>Complex
#>Real

# Type Definitions are probably most similar to tyepdefs in c?
# a simple type with no special constructor functions might look like this

#initiate the type
type Person
    name::AbstractString
    male::Bool
    age::Float64
    children::Int
end

#create new object of that type
p = Person("Julia", false, 4, 0)
println(p)
#> Person: Person("Julia",false,4.0,0)

#create list of Person(s)
people = Person[]
push!(people, p)
push!(people, Person("Jimmy", true, 42, 0))
push!(people, Person("Gabi", false, 17, 3))
println(people)
#> 2-element Array{Person,1}: [Person("Steve",true,42.0,0),Person("Jade",false,17.0,3)]

# constructor functions can be defined to easily create objects
type Family
    name::AbstractString
    members::Array{AbstractString, 1}
    extended::Bool
    
    # constructor that takes one argument and generates a default
    # for the other two values
    Family(name::AbstractString) = new(name, AbstractString[], false)
    
    # constructor that takes two arguements and infers the third
    Family(name::AbstractString, members) = new(name, members, length(members) > 3)
end

#Missing arguments will instantiate empty fields
fam1 = Family("Burgess")
println(fam1)
#> Family("blogs",AbstractString[],false)


fam2 = Family("Freud", ["anna", "bob", "charlie", "dick"])
println(fam2)
#> Family("jones",AbstractString["anna","bob","charlie","dick"],true)
