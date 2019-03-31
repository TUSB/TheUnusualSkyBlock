##############################
### エリア移動時分岐処理
##############################

scoreboard players operation $Current Global = @s Dimension
scoreboard players operation $Last Global = @s LastDimension
scoreboard players operation $Current Glboal /= $100 Const
scoreboard players operation $Last Global /= $100 Const

execute if score $Current Global matches 0 unless score $Current Global = $Last Global run function area_manager:on_change/skylands
execute if score $Current Global matches 1 unless score $Current Global = $Last Global run function area_manager:on_change/skill_setting_field



