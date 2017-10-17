
#1d array of rand float 64s
a = rand(16) 

#array of srtings
b = ["string $(i)" for i in 1:16]

#2d array of 16 floats in 2 steps
c = rand(16,2)

#3d array of 16 floats in 2 steps each dirction
d = randn(16,2,2)

#display em
println("a: ", a)
println()
println("b: ", b)
println()
println("c: ", c)
println()
println("d: ", d)

#this should look familiar
function printsum(a)
    # summary:: Generates a summary of an object
    println(summary(a), ": ", repr(a))
end

# many functions in Julia have an array method
# to be applied to specific dimensions of an array:

#add up all items in array
a1 = sum(a)
printsum(a1)

# takes the sum over the second dimension
c1 = sum(c ,2)
printsum(c1)        

# sum over first and third dim
d1 = sum(d,(1,3))
printsum(d1)    

# find the max elt between dim 1 and 2
c2 = maximum(c,2)    
printsum(c2)

#find max of all elements in array
c3 = maximum(c)
printsum(c3)

# find the max elt and its index along dim 2
d2 = findmax(d, 3)  
printsum(d2)

#broadcast operators are preceded by a dot: 

# add 3 to all elements
c4 = c .+ 3       
printsum(c4)

# adds vector [1 2] to all elements along first dim
c5 = c .+ [1 2]  
printsum(c5)

printsum(d)
println()

# holds dim 3 fixed and displays the resulting view
d3 = d[:,:,1] 
printsum(d3)
println()

# that's a 2x1x2 array. not very intuititive to look at
d4 = d[:,2,:]  
printsum(d4)
