#> skill:act/black_mage/candle/act0
#
# キャンドル発動

# 演出用エンダーマイトを召喚
execute if block ~ ~2.1 ~ minecraft:air run summon minecraft:endermite ~ ~2.1 ~ {Tags:[Skill,Candle,NativeTask,TickingRequired],Fire:1200s,active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:1200,show_particles:true}],Invulnerable:true,Silent:true,NoAI:true}

# 持続時間・スポナーに適用するDelay = 300-(y座標) Lv2なら2倍
execute store result score _ _ run data get entity @s Pos[1] -1
scoreboard players add _ _ 300
execute if score _ Level matches 2 run scoreboard players operation _ _ += _ _
tellraw @a [{"score":{"name":"_","objective":"_"}}]
# 持続時間を変更
execute positioned ~ ~2.1 ~ store result entity @e[tag=Candle,tag=!Initialized,distance=..0.01,limit=1] PortalCooldown int 1 run scoreboard players get _ _
# スポナーのDelayを変更
execute positioned ~-5 ~-3 ~-5 as @e[type=minecraft:item_display,tag=Spawner,dx=10,dy=8,dz=10] at @s store result block ~ ~ ~ Delay short 1 run scoreboard players get _ _

# 演出
function makeup:skill/act/black_mage/candle/act0
