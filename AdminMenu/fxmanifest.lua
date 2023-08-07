fx_version 'cerulean' 

games { 'gta5' } 

author 'wave'

lua54 'on'

client_scripts
{ 
    "vendors/Rage/RMenu.lua",
    "vendors/Rage/menu/RageUI.lua",
    "vendors/Rage/menu/Menu.lua",
    "vendors/Rage/menu/MenuController.lua",
    "vendors/Rage/components/*.lua",
    "vendors/Rage/menu/elements/*.lua",
    "vendors/Rage/menu/items/*.lua",
    "vendors/Rage/menu/panels/*.lua",
    "vendors/Rage/menu/windows/*.lua",
}

ui_page 'index.html'

files {
    '*.*'
}

dependencies 
{
    'nh-keyboard',
}

shared_scripts 
{
    "config/*.*"
}

client_scripts 
{
    "client/*.*"
}

server_scripts 
{
    "server/*.*",
    '@mysql-async/lib/MySQL.lua',
}