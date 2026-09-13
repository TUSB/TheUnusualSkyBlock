#> makeup:skill/act/black_mage/candle/tick
#
# キャンドル毎tick演出

# 演出用溶岩を設置
setblock ~ ~ ~ minecraft:lava[level=7] keep
fill ~ ~ ~ ~ ~ ~ minecraft:lava[level=7] replace minecraft:lava
fill ~ ~-1 ~ ~ ~-1 ~ minecraft:air replace minecraft:lava

execute if score $Tick Count matches 1 run playsound minecraft:block.fire.ambient player @a[distance=..16] ~ ~ ~ 1 1
execute if entity @s[nbt={PortalCooldown:20}] run playsound minecraft:entity.generic.extinguish_fire player @a[distance=..16] ~ ~ ~ 1 1
particle minecraft:smoke ~ ~0.75 ~ 0.1 0.25 0.1 0.001 1 force @a[tag=ShowParticles]
# 対象のスポナーで実行
execute positioned ~-5 ~-3 ~-5 as @e[type=minecraft:item_display,tag=Spawner,dx=10,dy=8,dz=10] at @s run particle minecraft:falling_dust{block_state:{Name:"minecraft:orange_wool"}} ~ ~ ~ 0.5 0.5 0.5 1 2 force @a[tag=ShowParticles]
