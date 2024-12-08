#> entity:spawn/correction_pos/loop
# 補正予定先のポイント確認
execute as @e[tag=CorrectionPos,distance=..1.5] at @s positioned ^ ^ ^1 run function entity:spawn/correction_pos/check_a_point
execute if score _ _ matches 0 if entity @e[tag=CorrectionPos,distance=..1.5] run function entity:spawn/correction_pos/loop
