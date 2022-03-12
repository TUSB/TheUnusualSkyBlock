##############################
### エンティティ ルートドロップ
##############################

#初期化
scoreboard players set @s Calc 100
function oh_my_dat:please
data modify storage item: LootTableList set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]."ステータス".LootTable
function entity:loot/loop
