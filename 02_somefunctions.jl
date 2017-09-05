function area_triang(a,b)
    b*a/2
end

function area_circ(r)
    pi*r^2
end

#ignores things with a #

area_triang(2,3), round(area_circ(5),1)

typeof(area_triang(2,3)),isa(area_triang(2,3),Int)
