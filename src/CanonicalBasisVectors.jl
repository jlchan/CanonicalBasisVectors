module CanonicalBasisVectors

using LinearAlgebra

# define CanonicalBasisVector type as a new AbstractVector type
struct CanonicalBasisVector <: AbstractVector{Bool}
    length::Int64
    index::Int64
end

# using "import" to extend Julia's built-in functions
import Base: size, getindex
Base.size(x::CanonicalBasisVector) = (x.length, )
Base.getindex(x::CanonicalBasisVector, i) = i==x.index

include("inner.jl")

export CanonicalBasisVector, inner

end # module
