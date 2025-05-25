#> skill:act/ninja/choyaku/sneak
#
# 跳躍スニーク
scoreboard players set @s[nbt=!{active_effects:[{id:"minecraft:jump_boost"}]}] Choyaku 0
scoreboard players add @s Choyaku 1

execute if score _ Level matches 1 run scoreboard players set _ Choyaku 5
execute if score _ Level matches 2 run scoreboard players set _ Choyaku 15
execute if score _ Level matches 3 run scoreboard players set _ Choyaku 25
execute if score _ Level matches 4 run scoreboard players set _ Choyaku 35

scoreboard players operation @s Choyaku < _ Choyaku
# 跳躍力上昇付与マクロ 1減らして値を渡す
execute store result storage skill: macro int 0.999 run scoreboard players get @s Choyaku
effect clear @s minecraft:jump_boost
function skill:act/ninja/choyaku/effect_macro with storage skill:
data remove storage skill: macro
# インターバル設定
scoreboard players set @s Interval 5
# 演出
function makeup:skill/act/ninja/choyaku/sneak
