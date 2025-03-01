
function shortest_path(g::AbstractGraph)
    tmat = (map(x->iszero(x) ? zero(TropicalMinPlus{Float64}) : TropicalMinPlus(1.0),
adjacency_matrix(g)) + Diagonal(fill(TropicalMinPlus(0.0), 10)))^10
end