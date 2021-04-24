######################################################
# １つのステータスに対してレベルによる補正を適用する。
######################################################

# 基礎
execute store result score _ _ run data get storage tusb_mob: _."基礎ポイント" 2000
execute store result score _ Ret run scoreboard players operation _ _ /= _ BaseTotal

# 成長
execute store result score _ _ run data get storage tusb_mob: _."成長ポイント" 100
scoreboard players operation _ _ *= @s Level
scoreboard players operation _ _ /= _ GrowTotal
scoreboard players operation _ Ret += _ _
scoreboard players set _ _ 100
scoreboard players operation _ Ret /= _ _
