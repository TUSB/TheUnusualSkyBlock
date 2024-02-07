
### キャンドル発動

execute if block ~ ~2.1 ~ minecraft:air run summon minecraft:endermite ~ ~2.1 ~ {Tags:[Skill,Candle,NativeTask,TickingRequired],Fire:1200s,ActiveEffects:[{Id:14,Amplifier:0b,Duration:1200,ShowParticles:true}],Invulnerable:true,Silent:true,NoAI:true}

execute store result score _ _ run data get entity @s Pos[1] -1
scoreboard players add _ _ 300
execute if score _ Level matches 2 run scoreboard players operation _ _ += _ _

execute positioned ~ ~2.1 ~ store result entity @e[tag=Candle,tag=!Initialized,distance=..0.01,limit=1] PortalCooldown int 1 run scoreboard players get _ _

execute positioned ~-5 ~-3 ~-5 as @e[type=minecraft:spawner_minecart,tag=Spawner,dx=10,dy=8,dz=10] store result entity @s Delay short 1 run scoreboard players get _ _

function makeup:skill/act/black_mage/candle/act0
