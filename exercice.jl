# MTH8211 Labo 1
# Amar Boukrif
# 2024-05-30

using LinearAlgebra

n = 3
A = [1.0 2.0 3.0;
    2.0 -5.0 3.0
    3.0 3.5 -4.0]
b = ones(n)

# résoudre Ax = b

### votre code ici ; ne rien modifier d'autre
#x = rand(n)
x = A \ b
###

# vérification
using Test
@test norm(A * x - b) ≤ sqrt(eps()) * norm(b)
