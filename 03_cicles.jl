#i=1
#if isless(i,10randn(1)[1])
#    println("Nop")
#else
#    println("Yep")
#end

i=10randn(1)[1]; j=10randn(1)[1]
while i>j
    println(i," ", j)
    i-=1
    j+=1
end
