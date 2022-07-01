
### ベッドイン時

# Tips表示
execute if entity @s[gamemode=!adventure] run function player:tips/show

# adv就寝ダメ
effect give @s[gamemode=adventure] instant_damage 1 0 true

function makeup:player/trigger/slept_in_bed
advancement revoke @s only player:trigger/slept_in_bed
