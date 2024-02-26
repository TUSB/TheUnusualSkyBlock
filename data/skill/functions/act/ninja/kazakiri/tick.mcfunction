##############################
### 風切毎tick処理
##############################

execute store result score _ Kazakiri run data get entity @s Pos[1] 100

scoreboard players set _ Calc -5

scoreboard players set _ _ 0
execute store success score _ _ if block ~0.41 ~-2.00 ~0.41 minecraft:air if block ~0.41 ~-2.00 ~-0.41 minecraft:air if block ~-0.41 ~-2.00 ~0.41 minecraft:air if block ~-0.41 ~-2.00 ~-0.41 minecraft:air
execute if score _ _ matches 0 if score _ Kazakiri matches 200..25800 run scoreboard players set _ Calc -3

scoreboard players set _ _ 0
execute store success score _ _ if block ~0.41 ~-1.00 ~0.41 minecraft:air if block ~0.41 ~-1.00 ~-0.41 minecraft:air if block ~-0.41 ~-1.00 ~0.41 minecraft:air if block ~-0.41 ~-1.00 ~-0.41 minecraft:air
execute if score _ _ matches 0 if score _ Kazakiri matches 100..25700 run scoreboard players set _ Calc -1

scoreboard players set _ _ 0
execute store success score _ _ if block ~0.41 ~-0.20 ~0.41 minecraft:air if block ~0.41 ~-0.20 ~-0.41 minecraft:air if block ~-0.41 ~-0.20 ~0.41 minecraft:air if block ~-0.41 ~-0.20 ~-0.41 minecraft:air
execute if score _ _ matches 0 if score _ Kazakiri matches 20..25620 run scoreboard players set _ Calc 1

scoreboard players set _ _ 0
execute store success score _ _ if block ~0.41 ~ ~0.41 minecraft:air if block ~0.41 ~ ~-0.41 minecraft:air if block ~-0.41 ~ ~0.41 minecraft:air if block ~-0.41 ~ ~-0.41 minecraft:air
execute if score _ _ matches 0 if score _ Kazakiri matches 0..25600 run scoreboard players set _ Calc 3

scoreboard players set _ _ 0
execute store success score _ _ if block ~0.41 ~0.40 ~0.41 minecraft:air if block ~0.41 ~0.40 ~-0.41 minecraft:air if block ~-0.41 ~0.40 ~0.41 minecraft:air if block ~-0.41 ~0.40 ~-0.41 minecraft:air
execute if score _ _ matches 0 if score _ Kazakiri matches -40..25560 run scoreboard players set _ Calc 5

execute if score _ Calc matches 3.. if block ~ ~-1 ~ minecraft:air run scoreboard players add _ Calc 4
execute if score _ Calc matches 7.. if block ~ ~-1 ~ minecraft:air run scoreboard players operation _ Calc *= $-1 Const
execute if score _ Calc matches ..-7 if block ~ ~-1 ~ minecraft:air run scoreboard players add _ Calc 6

tag @s[tag=KazakiriJump,nbt=!{active_effects:[{id:"minecraft:levitation"}]}] remove KazakiriJump
execute if entity @s[tag=KazakiriJump] run scoreboard players reset _ Calc

#execute if score _ Calc matches -5 run effect clear @s[nbt=!{active_effects:[{id:"minecraft:levitation",amplifier:-6b}]}] minecraft:levitation
#execute if score _ Calc matches -5 run effect give @s minecraft:levitation 1 250

#execute if score _ Calc matches -3 run effect clear @s[nbt=!{active_effects:[{id:"minecraft:levitation",amplifier:-4b}]}] minecraft:levitation
#execute if score _ Calc matches -3 run effect give @s minecraft:levitation 1 252

#execute if score _ Calc matches -1 run effect clear @s[nbt=!{active_effects:[{id:"minecraft:levitation",amplifier:-2b}]}] minecraft:levitation
#execute if score _ Calc matches -1 run effect give @s minecraft:levitation 1 254

execute if score _ Calc matches 1 run effect clear @s[nbt=!{active_effects:[{id:"minecraft:levitation",amplifier:0b}]}] minecraft:levitation
execute if score _ Calc matches 1 run effect give @s minecraft:levitation 1 0

execute if score _ Calc matches 3 run effect clear @s[nbt=!{active_effects:[{id:"minecraft:levitation",amplifier:2b}]}] minecraft:levitation
execute if score _ Calc matches 3 run effect give @s minecraft:levitation 1 2

execute if score _ Calc matches 5 run effect clear @s[nbt=!{active_effects:[{id:"minecraft:levitation",amplifier:4b}]}] minecraft:levitation
execute if score _ Calc matches 5 run effect give @s minecraft:levitation 1 4

effect give @s minecraft:slow_falling 1 0

scoreboard players remove @s Kazakiri 1

execute if score @s Kazakiri matches 100 run tellraw @s [{"translate": "%1$sの効果が切れそうだ。","color":"yellow","with":[{"translate":"風切","color":"white","hoverEvent":{"action":"show_text","value":{"translate":"風を纏い、空中を浮遊する。"},"color":"white"}}]}]
execute if score @s Kazakiri matches 40 run tellraw @s [{"translate": "%1$sの効果が切れそうだ！！！","color":"yellow","with":[{"translate":"風切","color":"white","hoverEvent":{"action":"show_text","value":{"translate":"風を纏い、空中を浮遊する。"},"color":"white"}}]}]
execute if score @s Kazakiri matches ..0 run tellraw @s [{"translate":"%1$sの%2$sの効果が切れた。","color":"yellow","with":[{"selector":"@s","color":"white"},{"translate":"風切","color":"white","hoverEvent":{"action":"show_text","value":{"translate":"風を纏い、空中を浮遊する。"},"color":"white"}}]}]

execute if score @s Kazakiri matches ..0 run effect clear @s minecraft:levitation
execute if score @s Kazakiri matches ..0 run effect clear @s minecraft:slow_falling
execute if score @s Kazakiri matches ..0 run scoreboard players reset @s Kazakiri

#演出
function makeup:skill/act/ninja/kazakiri/tick
