
function printsum(a)
    # summary:: Generates a summary of an object
    println(summary(a), ": ", repr(a))
end

#arrays can be initilaised directly
a = [1,2,3,4,5,6,7,8,9,10]
printsum(a)

#or initialised empty
a1 = []
printsum(a1)

#Arrays can be initialised with a type 
#so that push will work
a3 = Int64[]
printsum(a3)

#ranges are different from arrays
a4 = 1:20
printsum(a4)

#however they can be used to create arrays
a4 = collect(1:10)
printsum(a4)

#rand(x) will produce a float64 x times
a0 = rand(8)
printsum(a0)

#motherfuck, what is this? matlab?
#arrays are indexed from 1!?
print(a0[1]) #noterror
print(a0[0]) #error

#use push! to append to the end of a list
#the ! indicates that the first arg is updated
push!(a, 5)
printsum(a)

push!(a1, "string")
printsum(a1)

push!(a6, [1,2,3],[256,999,84])
printsum(a6)

#pop! will delete the last element in the array
printsum(a)
pop!(a)
printsum(a)

#deleteat! will deleate at K
printsum(a0)
deleteat!(a0, 3)
printsum(a0)

#using repeat to create arrays
#using keywords 'inner' and 'outer'

a7 = repeat(a, inner=[3], outer=[1])
printsum(a7)

a8 = repeat([4:-1:1], inner=[1], outer=[2])
printsum(a8)

#check type
println(eltype(a4))

#check length
println(length(a4))

#check dimesions
println(ndims(a4))

#a tuple containing dimesions
println(size(a4))

#all the valid indices
println(indices(a4))

#iterator
println(eachindex(a4))

#linear distance between elements along dimeson K
println(stride(a4,1))

#linear distance in each dimesions
println(strides(a4))

a9 = cat(1,a, a4)
printsum(a9)

a10 = vcat(a, a4)
printsum(a10)

a11 = hcat(a, a4) #wont work for different dimesions
printsum(all)

#The concatenation functions are used so often that they have special syntax:
all = [a; a4] #vcat
printsum(all)

ball = [a a4] #hcat
printsum(ball)

mall = [a a4; a a4] #hvcat - both directions
printsum(mall)

#The following example computes a weighted average 
#of the current element and its left and right neighbor along a 1-d grid
y = Float64[ 0.25*a0[i-1] + 0.5*a0[i] + 0.25*a0[i+1] for i=2:length(a0)-1 ]
printsum(a0)
printsum(y)

#arrays can also be gend from comprehensions
a5 = [2^i for i = 1:10]
printsum(a5)

# arrays can be any type, so arrays of arrays can be created
#not the same as multidimesional arrays
a6 = (Array{Int64, 1})[]
printsum(a6)
