#Lets mix julia and python
using PyCall

@pyimport numpy as np
@pyimport numpy.random as rd
@pyimport matplotlib.pyplot as pl
x= 10 * np.sort(rd.rand(30))
yerr= 0.2 * np.ones_like(x)
y= np.sin(x) + yerr .* rd.randn(length(x))
#pl.plot(x,y,"*")
#pl.xlabel("x")
#pl.ylabel("y")
#pl.xticks(fontsize = 18)
#pl.yticks(fontsize=18)
#pl.show()

@pyimport Gedi.kernel as kernel
@pyimport Gedi.kernel_likelihood as kernel_likelihood
#kernel
kernel0= kernel.ExpSineSquared(10,1,5)
println("Initial kernel ",kernel0)
#log likelihood
kernel_lk= kernel_likelihood.likelihood(kernel0,x,y,yerr)
println("initial likelihood ",kernel_lk)

#kernel
kernel1= kernel.QuasiPeriodic(10,1000,1,5)
println("Initial kernel ",kernel1)
#log likelihood
kernel_lk= kernel_likelihood.likelihood(kernel1,x,y,yerr)
println("initial likelihood ",kernel_lk)
