#> player:rise/
###生き返り後処理

##体力再設定
#最大体力
function effect:status/modify_max
#MP超過修正
scoreboard players operation @s MP < @s MPMax
#ペイル再付与 ロック解除
scoreboard players set _ _ -1
execute if score @s PaleLevel matches ..-1 run scoreboard players operation @s PaleLevel *= _ _
execute if score @s PaleLevel matches 0.. run function effect:pale/health_down
execute if score @s PaleLevel matches 0.. run function makeup:effect/pale/apply
#全回復
effect give @s instant_health 1 10 true
#MP表示修正
function player:mp_bar/set

##満腹度調整
function effect:status/hunger

## ディメンション移動処理
function #oh_my_dat:please
execute store success score _ _ run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LastDeathDimension set from entity @s Dimension
execute if score _ _ matches 1 run function player:rise/enter_dimension

##### この先座標が変更される可能性があるため、at @s で位置を修正すること。
## プレイヤー初期リスポーン修正
execute unless data entity @s[tag=!HasRestoreItems,tag=!Raise] SpawnForced run function player:rise/none_spawn_point

### レスト・アイテム処理
execute if entity @s[tag=HasRestoreItems,tag=!Raise] in area:control_area run function skill:act/common/restore_item/restore/
execute if entity @s[tag=HasRestoreItems,tag=Raise] run function skill:act/common/restore_item/restore/cancel
### レイズ処理
execute if entity @s[tag=Raise] at @s run function skill:act/white_mage/araise/raise_check


## フラグリセット
scoreboard players reset @s Hunger
