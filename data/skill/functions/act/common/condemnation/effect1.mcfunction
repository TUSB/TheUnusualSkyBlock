##############################
### 実行者のレベルを減少させます
##############################

#表示
tellraw @a {"translate":"%s のレベルが減少した！","with":[{"entity":"@s","nbt":"CustomName","interpret":true}]}

#演出
function makeup:skill/act/common/condemnation/effect0

#データ呼び出し
function oh_my_dat:please

#レベル減少幅を計算(通常10%、ボスなら20%)
scoreboard players operation _ _ = @s Level
execute unless entity @s[tag=Boss] run scoreboard players set _ Calc -10
execute if entity @s[tag=Boss] run scoreboard players set _ Calc -20
scoreboard players operation _ _ *= _ Calc
scoreboard players set _ Calc 100
scoreboard players operation _ _ /= _ Calc

#Call_Level
execute store result storage mob_data: Call.Level.Add int 1 run scoreboard players get _ _
data modify storage mob_data: Call.Level.Range set value 0
function skill:enemy/change_status/

# カスタムネームを更新
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]."ステータス".CustomName run data modify entity @s CustomName set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]."ステータス".CustomName
execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]."ステータス".CustomName run data remove entity @s CustomName
execute if entity @s[tag=!HideLevel] in area:control_area run loot replace block 2 2 2 container.0 loot enemy:name_with_level
execute if data entity @s[tag=!HideLevel] CustomName in area:control_area run data modify entity @s CustomName set from block 2 2 2 Items[0].tag.display.Lore[0]
execute unless data entity @s[tag=!HideLevel] CustomName in area:control_area run data modify entity @s CustomName set from block 2 2 2 Items[0].tag.display.Lore[1]

#タグを付与
tag @s add CondemnationApplied
