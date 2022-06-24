
###生き返り後処理

##体力再設定
#最大体力
function effects:status/modify_max
#MP超過修正
scoreboard players operation @s MP < @s MPMax
#ペイル再付与
execute if score @s PaleLevel matches 0.. run function effects:pale/health_down
execute if score @s PaleLevel matches 0.. run function makeup:effects/pale/apply
#全回復
effect give @s instant_health 1 10 true
#MP表示修正
function player:mp_bar/set

##満腹度調整
function effects:status/hunger

##### この先座標が変更される可能性があるため、at @s で位置を修正すること。
### レスト・アイテム処理
execute if entity @s[tag=HasRestoreItems,tag=!Raise] in area:control_area run function skill:act/common/restore_item/restore/
execute if entity @s[tag=HasRestoreItems,tag=Raise] run function skill:act/common/restore_item/restore/cancel
### レイズ処理
execute if entity @s[tag=Raise] at @s run function skill:act/white_mage/araise/raise_check

## フラグリセット
scoreboard players reset @s Hunger
