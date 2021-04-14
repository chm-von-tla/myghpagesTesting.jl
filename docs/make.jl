using myghpagesTesting
using Documenter

DocMeta.setdocmeta!(myghpagesTesting, :DocTestSetup, :(using myghpagesTesting); recursive=true)

makedocs(;
    modules=[myghpagesTesting],
    authors="Charis P. Michelakis <ch.p.michelakis@gmail.com>",
    repo="https://github.com/chm-von-tla/myghpagesTesting.jl/blob/{commit}{path}#{line}",
    sitename="myghpagesTesting.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://chm-von-tla.github.io/myghpagesTesting.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/chm-von-tla/myghpagesTesting.jl",
)
