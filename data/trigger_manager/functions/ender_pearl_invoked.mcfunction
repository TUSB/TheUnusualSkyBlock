##############################
### エンパ発動
##############################

execute if entity @s[scores={UseEnderPearl=1..}] if entity @e[type=minecraft:ender_pearl,nbt={owner:{}},distance=..1,limit=1] store success score $UseEnderPearl Global align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~

execute if score $UseEnderPearl Global matches 1 run scoreboard players remove @s UseEnderPearl 1
execute if score $UseEnderPearl Global matches 1 run scoreboard players set $UseEnderPearl Global 0
advancement revoke @s only trigger_manager:ender_pearl_invoked
