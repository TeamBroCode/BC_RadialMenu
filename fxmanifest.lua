fx_version 'cerulean'
game 'gta5'

description 'ox_lib RadialMenu'
version '1.0.0'

shared_scripts {
    '@ox_lib/init.lua',
    '@qb-core/shared/locale.lua',
    'locales/*.lua',
    'config.lua'
}

client_scripts {
    'client/*.lua',
}

server_scripts {
    'server/*.lua',
}

provide 'qb-radialmenu'
lua54 'yes'
use_experimental_fxv2_oal 'yes'