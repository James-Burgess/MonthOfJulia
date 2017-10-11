
##the same printsum function from yesterday
function printsum(a)
    # summary:: Generates a summary of an object
    println(summary(a), ": ", repr(a))
end

# repeat can be useful to expand a grid
# as in R's expand.grid() function
a = repeat([1,2],inner=[1],outer=[3*2])
b = repeat([1,2,3],inner=[2],outer=[2])
c = repeat([1,2,3,4],inner=[3],outer=[1])
printsum(a)
printsum(b)
printsum(c)

#now lets add them all together with hcat (horizontal concatation)
m1 = [a b c]
printsum(m1)

#for simple repetitions of arrays, 
#use repmat

# replicate m1 once into dim1 and twice into dim2
m2 = repmat(m1,1,2) 
printsum(m2)

#replicate m1 twice into dim1 and once into dim2
m3 = repmat(m1,2,1)   
printsum(m3)

#lets go to the next dimesion
m3 = rand(9,3,3)
printsum(m3)

#and the next
m4 = randn(12,2,4)
printsum(m4)

#Yay, just answered my first question on 
#stack overflow with this!
#https://stackoverflow.com/a/46689828/6372042
a = [2,3]

#hcat
b = [[2, 3] [4, 5]]
printsum(b)

#vcat
c = [[2 3] ; [4 5]]
printsum(c)

#lets create a multi array with list comprehensions
#each argument will create a new dimension
m5 = String["Hi Im element # $(i+2*(j-1 + 3*(k-1)))" for i=1:2, j=1:3, k=1:2]
printsum(m5)
