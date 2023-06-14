using Documenter
using Discord

makedocs(;
    modules=[Discord],
    format=Documenter.HTML(; assets=["assets/logo.png"]),
    pages=[
        "Home"     => "index.md",
        "Client"   => "client.md",
        "Events"   => "events.md",
        "REST API" => "rest.md",
        "Helpers"  => "helpers.md",
        "Types"    => "types.md",
        "Tutorial" => "tutorial.md",
    ],
    repo="https://github.com/Jorvents/Discord.jl/blob/{commit}{path}#L{line}",
    sitename="Discord.jl",
    authors="Xh4H <sindur.esl@gmail.com>, christopher-dG <chrisadegraaf@gmail.com>, Jorvents <jorven.tsahkna@gmail.com>",
)

deploydocs(;
    repo="github.com/Jorvents/Discord.jl",
)
