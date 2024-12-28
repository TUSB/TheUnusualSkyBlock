scoreboard players set _ _ 100
### 最大HPを計算する
execute store result score _ Calc run data get storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" 4
scoreboard players operation _ Calc *= @s Level
scoreboard players operation _ Calc /= _ _
scoreboard players operation _ Calc += @s Level
execute store result score @s HPMax run scoreboard players add _ Calc 10
