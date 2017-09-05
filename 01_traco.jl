function traco(x)
    i=1
    soma=0
    while i<=length(x[1,:])
        soma=soma+x[i,i]
        i=i+1
    end
    return soma
end

a=[1 2 3; 5 6 7; 9 10 11]
