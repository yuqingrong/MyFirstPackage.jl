using Test
using MyFirstPackage

@testset "shortest_path" begin
    g = smallgraph(:petersen)
    get_shortest_path = shortest_path(g)
    dijkstra_shortest_paths_mat = hcat([dijkstra_shortest_paths(g, i).dists for i in 1:Graphs.nv(g)]...)
    @test isapprox(getfield.(get_shortest_path, :n), dijkstra_shortest_paths_mat)
end