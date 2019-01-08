##############################
### トカルトコルデトーチ処理
##############################

###水の中の時
execute at @s if block ~ ~ ~ minecraft:water run tag @s add InWater
execute store result score $Tmp Global run data get entity @s Pos[1] 100000
scoreboard players operation $Tmp Global %= $100000 Const
execute if score $Tmp Global matches 7326 run tag @s remove InWater

###陸上・空中処理
execute if entity @s[tag=!InWater] store result score $Torch TorchCount run clear @s minecraft:torch 1
execute if entity @s[tag=!InWater] if score $Torch TorchCount matches 1 at @s run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:lever",Count:1b,tag:{display:{Name:["§7消えた松明"],Lore:["§r火が消えてしまった松明。","§r篝火で火を付け直せる。"]}}},Health:1000f,PickupDelay:0s,Tags:[Initialized]}
scoreboard players set @s[tag=!InWater] TorchCount 3

###水中処理
execute if entity @s[tag=InWater] store result score $Torch TorchCount run clear @s minecraft:torch 50
execute if entity @s[tag=InWater] at @s run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:lever",Count:1b,tag:{display:{Name:["§7消えた松明"],Lore:["§r火が消えてしまった松明。","§r篝火で火を付け直せる。"]}}},Health:1000f,PickupDelay:0s,Tags:[UnmodifiedTorch]}
execute store result entity @e[tag=UnmodifiedTorch,limit=1] Item.Count byte 1 run scoreboard players get $Torch TorchCount
data merge entity @e[tag=UnmodifiedTorch,limit=1] {Tags:[Initialized]}
execute if entity @s[tag=InWater] run scoreboard players set @s TorchCount 1
tag @s[tag=InWater] remove InWater

###トーチ不足の時
effect give @s[nbt=!{Inventory:[{id:"minecraft:torch"}]}] minecraft:instant_damage 1 1 true
