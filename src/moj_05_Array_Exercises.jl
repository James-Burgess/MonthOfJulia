
function isRow(A, i)
   #summary:: function returns true if index (i) is present in the array(A)
    return(i <= ndims(A) && i > 0)
end

#test case
a = [1 2 3]
b = [4 5 6]
c = [a ; b]

data = [1.0 2.0 1.0; 1.0 1.0 1.0; 2.0 3.0 4.0]

#the tests
println(isRow(data, -1)) 
println(isRow(data, 0)) 
println(isRow(data, 1))
println(isRow(data, 2))
println(isRow(data, 3))
println(isRow(data, 4))

function isCol(A,i)
    #summary:: returns true if col exists
    col = length(A)/ndims(A)
    return(i <= col && i > 0)
end

#the tests
println(isCol(data, 0))
println(isCol(data, 1))
println(isCol(data, 2))
println(isCol(data, 4))

function getHighestInRow(A, i)
    #summary:: returns highest num in row(i)
    if isRow(A,i)
        return(maximum(@view(A[i,:])))
    else
        throw("e")
    end
end

println(getHighestInRow(data, 1))
#link to SO to help solve this issue https://stackoverflow.com/questions/46793147/slicing-multidimesional-array-by-a-variable

@time(data[2,:])
@time(@view(A[ i,:]))

sum(data)
