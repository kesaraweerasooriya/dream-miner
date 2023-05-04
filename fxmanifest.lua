fx_version 'cerulean'

game 'gta5'

server_scripts {
	'config.lua',
	'server/server.lua'
}

client_scripts {
	'config.lua',
	'client/client.lua'
}

shared_scripts { 
	'@qb-core/import.lua',
}

ui_page('client/html/index.html')

files({
    'client/html/index.html',
    'client/html/sounds/pickaxe.ogg',
	'client/html/sounds/breakrock.ogg'
})
