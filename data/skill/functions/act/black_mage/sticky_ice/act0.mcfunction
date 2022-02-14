
### スティッキーアイス発動

execute if block ~ ~ ~ minecraft:air run summon minecraft:falling_block ~ ~ ~ {Tags:[StickyIce,NativeTask,Initializing],BlockState:{Name:"minecraft:ice"},PortalCooldown:1,NoGravity:1b,Time:1,DropItem:0b}
execute as @e[tag=Initializing,limit=1] positioned as @s run setblock ~ ~ ~ minecraft:cobweb keep

execute store result score _ _ run data get entity @s Pos[1] 1
scoreboard players remove _ _ 300
scoreboard players set _ Calc 2
execute if score _ Level matches 2 run scoreboard players operation _ _ *= _ Calc
scoreboard players add _ _ 600

execute as @e[tag=Initializing,limit=1] store result entity @s Time int 1 run scoreboard players get _ _
execute as @e[distance=..0.01,tag=StickyIce,limit=1] store result entity @s Time int 1 run scoreboard players get _ _
tag @e[tag=Initializing,limit=1] remove Initializing

function makeup:skill/act/black_mage/sticky_ice/act0
