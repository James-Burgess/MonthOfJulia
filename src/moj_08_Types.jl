
#types are declared with the '::' operator to attach type annotations to expressions
#There are two primary reasons to do this:
#    As an assertion to help confirm that your program works the way you expect,
#    To provide extra type information to the compiler, which can then improve performance in some cases

#declare 3 as an Int64
println((1+2)::Int64)
#>3

#attempt to assign 3 to a float value
println((1+2)::Float64)
#>TypeError: typeassert: expected Float64, got Int64

#attempting on a glob
x::Int8 = 100::Int64
#>type declarations on global variables are not yet supported

#create function to create our var
function foo()
           x::Int8 = 100::Int64 #Int64 is converted to int8 using convert()
           x
end

#call foo
println(foo())
#>100

#find what type foo is:
println(typeof(foo()))
#>Int8

function sinc(x)::Float64
    #Summary:: Sinc is used in signal processing https://en.wikipedia.org/wiki/Sinc_function
    if x == 0
        return 1
    end
    return sin(pi*x)/(pi*x)
end

sinc(64)
#>-3.8981718325193755e-17

function plus_one(n::Number)
    #Summary:: this function gets a number, and returns the same number plus one
    return n + 1
end

x = 13.5645::Float64
println(plus_one(x))
#>14.5645

x = 11::Int
println(plus_one(x))
#>12

x = true::Bool
println(plus_one(x))
#>2

x = "hello"::String
println(plus_one(x))
#>MethodError: no method matching plus_one(::String)

subtypes(Integer)

supertype(Integer)
