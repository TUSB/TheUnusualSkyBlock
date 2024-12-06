#> skill:practice/
#スキル取得
data modify storage skill: Skill set from storage item: Item.components."minecraft:custom_data".Skill
#インターバル確認
#TODO: 秒で表示
execute store result score _ Calc run time query gametime
execute store result score _ _ run data get storage skill: Skill.LastUsed
execute store result score _ Interval run data get storage skill: Skill.Interval
# 潜在能力 - スキル使用不可時間短縮 --
scoreboard players set @s _ 100
scoreboard players operation _ Interval *= @s IntervalRate
scoreboard players operation _ Interval /= @s _
# --
scoreboard players operation _ Calc -= _ _
#ブリッツマニューバ - もしマイナスならインターバル無効
execute if score @s BlitzManover matches 0.. if score _ Calc matches ..-1 run scoreboard players set _ Calc 0
scoreboard players operation _ Interval -= _ Calc
#インターバル中
execute if score _ Interval matches 1.. run function makeup:skill/practice/error/while_interval
#成功時
execute unless score _ Interval matches 1.. run function skill:practice/check_type
