#Function
function oh_my_dat:please
execute store result score _ _ run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].CombatHusk.TargetID 1
scoreboard players operation * OhMyDatID -= _ _
tag @a[scores={OhMyDatID=0}] add Target
scoreboard players operation * OhMyDatID += _ _

scoreboard players operation _ _ = @s SpecialAttack
scoreboard players set _ Calc 10
scoreboard players operation _ _ /= _ Calc
scoreboard players add _ _ 1
scoreboard players operation @a[tag=Target,limit=1] MP -= _ _
scoreboard players set _ _ 0
scoreboard players operation @a[tag=Target,limit=1] MP > _ _

particle minecraft:reverse_portal ~ ~1 ~ 0.5 0.5 0.5 0.1 100 normal
execute as @a[tag=Target,limit=1] at @s run particle minecraft:reverse_portal ~ ~1 ~ 0.5 0.5 0.5 0.1 100 normal
execute as @a[tag=Target,limit=1] at @s run playsound entity.witch.drink hostile @s ~ ~ ~ 1.0 1.0
execute as @a[tag=Target,limit=1] at @s run playsound item.bucket.empty_lava hostile @s ~ ~ ~ 1.0 1.0
execute as @a[tag=Target,limit=1] at @s run playsound item.chorus_fruit.teleport hostile @s ~ ~ ~ 1.0 0.6

tag @a[tag=Target,limit=1] remove Target
