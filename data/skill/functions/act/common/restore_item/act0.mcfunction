
### リスト・アイテム

#PlayerItemTunerを導入したらそれに合わせる

#> tusb_player: RestoreItemData[]
#{
# //インベントリ情報 <- entity Inventory
# Items[] : List
# //復活地点
# RaisePoint : Skill:WhiteMage/Araise
#}

function oh_my_dat:please
execute store result score @s RestoreItem run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].RestoreItemData

tellraw @s [{"translate":"現在保存されているインベントリ %1$s/3","bold":true,"with":[{"score":{"name":"@s","objective":"RestoreItem"}}]}]
#保存
tellraw @s[scores={RestoreItem=..2},gamemode=!adventure] {"translate":"<今のインベントリを保存する>","color":"green","clickEvent": {"action":"run_command","value":"/trigger RestoreItem set 1"}}
#返却
tellraw @s[tag=HasRestoreItems,gamemode=!adventure] {"translate":"<最後に保存したインベントリを返却する>","color":"red","clickEvent":{"action":"run_command","value":"/trigger RestoreItem set 2"}}
#キャンセル
tellraw @s[gamemode=!adventure] {"translate":"<キャンセルする>","color":"white","clickEvent": {"action":"run_command","value":"/trigger RestoreItem set 0"}}
#アドベンチャー
tellraw @s[gamemode=adventure] {"translate":"アドベンチャーエリアでは使用できません","color":"red","bold":true}

scoreboard players set @s[gamemode=!adventure] RestoreItem 6000
scoreboard players enable @s[gamemode=!adventure] RestoreItem
