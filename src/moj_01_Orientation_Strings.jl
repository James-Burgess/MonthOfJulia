
println("Hello World")

#pretty much python without the dottybois and you have to tjune when its over cause jules is needy
function spherevol(r)
    return 4/3*pi*r^3
end
spherevol(30)

#sussinct functions with 
#float64 definitions on args - will only accept float
quadratic(a, sqr_term::Float64, b::Float64) = (-b + sqr_term) / 2a

quadratic(2.0, -2.0, -12.0)

#Declartion
#Double Quotation marks are important
s1 = "the quick brown fox jumps over the lazy dog"

print(s1) #no newline
println()
println(s1) #appends newline after str


#search strings
i = search(s1, "brown")
println(i)

#string replace
r = replace(s1, "brown", "red")
show(r); println()


#we can also do the devils work and do some regex
s = search(s1, r"b[\w]*n")
println(s)

#you can use functions for regex that return 
#>RegexMatch("")
r = match(r"b[\w]*n", s1)
println(r)

#return just the string
show(r.match); println()

#find all instances and return a vector
r = matchall(r"[\w]{4,}", s1)
println(r)

#return an iterator over each match
r = eachmatch(r"[\w]{4,}", s1)
for i in r println("\"$(i.match)\" ") end



#strings can be repeated with ^
r = "hello "^3
show(r); println()

#use strip to remove whitespace
r = strip(" hello ")
show(r); println()

#you can also pass args to strip other stuff
r = strip(" hello ", ['h', ' '])
println(r)

#split works the same as py
r = split("hello, there,bob", ',')
show(r); println()

r = split("hello, there,bob", ", ")
show(r); println()

#see docs for info on limit and keep but it removes the extra space?
r = split("hello, there,bob", [',', ' '], limit=0, keep=false)
show(r); println()

#the opposite of split is join

println(collect(1:10))
r = join(collect(1:10), ", ")
show(r); 
