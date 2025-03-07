#> item:sign/click/warden_kit/
#
# ウォーデン栽培
#
# @private

# 空気かどうかをしっかり確かめる
    scoreboard players set _ _ 0
    execute if block ~ ~ ~1 air run scoreboard players add _ _ 1
    execute if block ~ ~ ~-1 air run scoreboard players add _ _ 1
    execute if block ~1 ~ ~1 air run scoreboard players add _ _ 1
    execute if block ~1 ~ ~ air run scoreboard players add _ _ 1
    execute if block ~1 ~ ~-1 air run scoreboard players add _ _ 1
    execute if block ~-1 ~ ~1 air run scoreboard players add _ _ 1
    execute if block ~-1 ~ ~ air run scoreboard players add _ _ 1
    execute if block ~-1 ~ ~-1 air run scoreboard players add _ _ 1
    execute if block ~ ~1 ~ air run scoreboard players add _ _ 1
    execute if block ~ ~1 ~1 air run scoreboard players add _ _ 1
    execute if block ~ ~1 ~-1 air run scoreboard players add _ _ 1
    execute if block ~1 ~1 ~1 air run scoreboard players add _ _ 1
    execute if block ~1 ~1 ~ air run scoreboard players add _ _ 1
    execute if block ~1 ~1 ~-1 air run scoreboard players add _ _ 1
    execute if block ~-1 ~1 ~1 air run scoreboard players add _ _ 1
    execute if block ~-1 ~1 ~ air run scoreboard players add _ _ 1
    execute if block ~-1 ~1 ~-1 air run scoreboard players add _ _ 1

# 2×3の空間がない場合失敗
    execute if score _ _ matches 17 run function item:sign/click/warden_kit/success
    execute unless score _ _ matches 17 run function makeup:item/sign/warden_kit/fail
    execute unless score _ _ matches 17 run tellraw @s {"translate":"この印板は3×2×3の空間がなければ使用できません。","color":"red","bold":true}
