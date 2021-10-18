
### フラワーギフト飛翔時

execute if entity @s[tag=FlowerGift1] run scoreboard players set _ _ 40
execute if entity @s[tag=FlowerGift2] run scoreboard players set _ _ 30
execute if entity @s[tag=FlowerGift3] run scoreboard players set _ _ 20
execute if entity @s[tag=FlowerGift4] run scoreboard players set _ _ 10
execute as @e[distance=..8,tag=Mob,tag=!Gifted] at @s run function skill:act/white_mage/flower_gift/apply
execute as @e[distance=..8,type=minecraft:spawner_minecart,tag=!Spawner,tag=!Gifted] at @s run function skill:act/white_mage/flower_gift/apply

#演出
function makeup:skill/act/white_mage/flower_gift/tick
