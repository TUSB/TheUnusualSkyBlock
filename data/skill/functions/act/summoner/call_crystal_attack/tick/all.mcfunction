
### クリスタル毎ティック処理

function makeup:skill/act/summoner/call_crystal_attack/tick/all

###Color:0b
execute if entity @s[tag=Light] run function skill:act/summoner/call_crystal_attack/tick/light
###Color:3b
execute if entity @s[tag=Ice] run function skill:act/summoner/call_crystal_attack/tick/ice
###Color:4b
execute if entity @s[tag=Lightning] run function skill:act/summoner/call_crystal_attack/tick/lightning
###Color:14b
execute if entity @s[tag=Fire] run function skill:act/summoner/call_crystal_attack/tick/fire
###Color:15b
execute if entity @s[tag=Dark] run function skill:act/summoner/call_crystal_attack/tick/dark

###クリスタル削除
execute if data entity @s {PortalCooldown:0} run function skill:act/summoner/call_crystal_attack/return/common
execute if data entity @s {PortalCooldown:300} run function skill:act/summoner/call_crystal_attack/return/common