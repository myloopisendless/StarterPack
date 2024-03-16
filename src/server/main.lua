local Config <const> = require("config")

lib.callback.register("starterPack:claim", function(source)
    local _source = source
    local player <const> = ESX.GetPlayerFromId(_source)

    if player.getMeta("starter", "claimed") then
        return "claimed"
    end

    for key, value in pairs(Config.items) do
        player.addInventoryItem(value.item, value.amount)
    end

    player.addAccountMoney("money", Config.cash)
    player.addAccountMoney("bank", Config.bank)
    player.setMeta("starter", { claimed = true })

    TriggerClientEvent('ox_lib:notify', _source, {
        title = "Starter Pack System",
        description = "You have successfully claimed your starter-pack",
        type = "success"
    })
end)