RegisterCommand("starterpack", function()
    if lib.alertDialog({
        header = "Hello "..GetPlayerName(PlayerId()),
        content = "Are you sure you wish to claim your starter-pack, once claimed you cannot claim another.",
        centered = true,
        cancel = true
    }) == "confirm" then
        local cb <const> = lib.callback.await("starterPack:claim", false)

        if cb == "claimed" then
            lib.alertDialog({
                header = "Hello "..GetPlayerName(PlayerId()),
                content = "Looks like you already claimed your starter-pack",
                centered = true,
                labels = {
                    confirm = "Close"
                }
            })
        end
    end
end)