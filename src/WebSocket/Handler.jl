module WSHandler

    import ..WSLogger
    import ..EventExporter

    using Base
    using Dates
    import .WSLogger
    import JSON


    function handleEvent(mainClient, data)
        # println(data)
        eventName = lowercase(data["t"])
        content = data["d"]
        accessExporter = uppercasefirst("$(eventName)Event") |> Symbol
        @async begin
            try
                eventFun = getfield(EventExporter, accessExporter)
                eventFun.executeEvent(mainClient, content)
            catch err
                println(err)
                println("I'm not being able to handle $eventName yet")
            end
        end
    end
end
