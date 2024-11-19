#> player:trigger/use/ender_pearl
### エンダーパール すり抜け抑制
scoreboard players set _ _ 0
execute store success score _ _ as @e[type=ender_pearl,distance=..1] on origin if entity @s[advancements={player:trigger/use/ender_pearl=true}] align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~
execute if score _ _ matches 1 run scoreboard players remove @s UseEnderPearl 1

# エンダーパールが無くなればreset
scoreboard players set _ _ 0
execute store success score _ _ as @e[type=ender_pearl,distance=1..128] on origin if entity @s[advancements={player:trigger/use/ender_pearl=true}]
execute if score _ _ matches 0 run scoreboard players reset @s UseEnderPearl

advancement revoke @s only player:trigger/use/ender_pearl
