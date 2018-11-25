##############################
### ネザースター削除
##############################

execute store result score $StarCount Global run clear @s minecraft:nether_star
scoreboard players operation プール Exp += $StarCount Global

execute store result score $PlayerCount Global if entity @e[team=Friendly]
# execute store result score $PlayerCount Global if entity @a
scoreboard players operation $Input Global = $PlayerCount Global
function calc_manager:square_root/value

scoreboard players operation $Devidend Global = プール Exp
scoreboard players operation $Devidend Global *= $1000 Const
scoreboard players operation $Devidend Global /= $Output Global

scoreboard players operation $Consumption Global = $Devidend Global
scoreboard players operation $Consumption Global *= $Output Global
scoreboard players operation $Consumption Global /= $1000 Const

scoreboard players operation プール Exp -= $Consumption Global

execute if score $PlayerCount Global matches 1 run tellraw @a ["",{"selector":"@a[sort=nearest]"}," は ",{"score":{"name":"$Devidend","objective":"Global"},"color":"green"}," 経験値を得た！"]
execute if score $PlayerCount Global matches 2.. run tellraw @a ["",{"selector":"@a[sort=nearest]"}," 達はネザースターを分け合い、それぞれ ",{"score":{"name":"$Devidend","objective":"Global"},"color":"green"}," 経験値を得た！"]
execute if score プール Exp matches 1.. run tellraw @a [" ",{"score":{"name":"プール","objective":"Exp"},"color":"green"}," 個のネザースターが持ち越された。"]
execute if score プール Exp matches ..0 if score $PlayerCount Global matches 2.. run tellraw @a [" ","ネザースターの持ち越しはなかった。"]

execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~64 ~ 16 2

scoreboard players operation @a Exp += $Consumption Global
execute as @a if score @s Exp >= @s RequiredExp run function main:status/level_up
