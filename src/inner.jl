# general inner product function
inner(v, A, u) = dot(v, A * u)

# specialize the "inner" function to our new CanonicalBasisVector type
inner(v, A, u::CanonicalBasisVector) = dot(v, A[:, u.index])
inner(v::CanonicalBasisVector, A, u) = dot(A[v.index, :], u)
inner(v::CanonicalBasisVector, A, u::CanonicalBasisVector) = A[v.index, u.index]
