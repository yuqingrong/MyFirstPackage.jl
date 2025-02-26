using MyFirstPackage
using Documenter

DocMeta.setdocmeta!(MyFirstPackage, :DocTestSetup, :(using MyFirstPackage); recursive=true)

makedocs(;
    modules=[MyFirstPackage],
    authors="yuqingrong",
    sitename="MyFirstPackage.jl",
    format=Documenter.HTML(;
        canonical="https://yuqingrong.github.io/MyFirstPackage.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/yuqingrong/MyFirstPackage.jl",
    devbranch="main",
)
