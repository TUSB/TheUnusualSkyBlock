
### クリスタル召喚共通


summon minecraft:armor_stand ~ ~ ~ {Invulnerable:true,Invisible:true,Small:true,NoGravity:true,PortalCooldown:120,Tags:[Initializing],ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:4004,Explosion:{Type:0b,Colors:[I;9225471]}}}]}
scoreboard players operation @e[tag=Initializing,limit=1,distance=0] Level = _ Level
execute if score _ Level matches 102 run data merge entity @e[tag=Initializing,limit=1,distance=0] {PortalCooldown:160}
execute if score _ Level matches 103 run data merge entity @e[tag=Initializing,limit=1,distance=0] {PortalCooldown:200}
execute if score _ Level matches 202 run data merge entity @e[tag=Initializing,limit=1,distance=0] {PortalCooldown:160}
execute if score _ Level matches 203 run data merge entity @e[tag=Initializing,limit=1,distance=0] {PortalCooldown:200}

# NativeTask
scoreboard players add @e[tag=Initializing,limit=1,distance=0] NativeFlag 1

function makeup:skill/act/summoner/call_crystal_attack/summon/common
