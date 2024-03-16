fx_version "adamant"
game "gta5"
lua54 "yes"
author "Xilo"
description "Simple Starter Pack Script - Made with Love"

client_scripts {
    "src/client/main.lua"
}

server_scripts {
    "src/server/main.lua"
}

shared_scripts {
    "@ox_lib/init.lua",
    "@es_extended/imports.lua",
    "config.lua"
}