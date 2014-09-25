A small ruby app that prints a multiplication table of prime numbers.

It uses a simplistic incremental Sieve of Eratosthenes algorithm to find primes based on this [[academic paper](http://www.cs.hmc.edu/~oneill/papers/Sieve-JFP.pdf)].

I build and deploy my gems using Snap:

[![Build Status](https://snap-ci.com/rearadmiral/primetable/branch/incremental_sieve/build_image)](https://snap-ci.com/rearadmiral/primetable/branch/incremental_sieve)

Instructions
============

   > gem install primetable

   > primetable 10

This will print the first 10 prime numbers.  You can try raising that number and seeing how far you can go.


Interesting Prime Number Resources
----------------------------------

[Visualization of primes on the number line (http://www.fastcodesign.com/1670397/infographic-visualizing-prime-numbers-for-people-who-suck-at-math)]

[Great Internet Mersenne Prime Search (http://www.mersenne.org/)] - use your spare CPU cycles to find the biggest primes
