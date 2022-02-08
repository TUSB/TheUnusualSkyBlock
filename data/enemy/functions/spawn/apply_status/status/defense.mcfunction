scoreboard players set _ _ 100
### 物理防御力を計算する
execute store result score _ Calc run data get storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" 1
scoreboard players operation _ Calc *= @s Level
scoreboard players operation _ Calc /= _ _
execute store result score @s Defense run scoreboard players add _ Calc 5
