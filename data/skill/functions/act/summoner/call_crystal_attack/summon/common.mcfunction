
### クリスタル召喚共通


summon minecraft:shulker ~ ~ ~ {NoAI:true,Invulnerable:true,Silent:true,Peek:56b,DeathLootTable:"empty",DeathTime:19s,PortalCooldown:120,Tags:[Initializing]}
scoreboard players operation @e[tag=Initializing,limit=1] SkillAttribute = _ Level
execute if score _ Level matches 102 run data merge entity @e[tag=Initializing,limit=1] {PortalCooldown:160}
execute if score _ Level matches 103 run data merge entity @e[tag=Initializing,limit=1] {PortalCooldown:200}
execute if score _ Level matches 202 run data merge entity @e[tag=Initializing,limit=1] {PortalCooldown:160}
execute if score _ Level matches 203 run data merge entity @e[tag=Initializing,limit=1] {PortalCooldown:200}

function makeup:skill/act/summoner/call_crystal_attack/summon/common
