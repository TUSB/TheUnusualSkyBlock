
function #oh_my_dat:please
data remove storage tusb_player: RestoreItemData
data modify storage tusb_player: RestoreItemData set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].RestoreItemData

execute if entity @s[gamemode=spectator] run tellraw @s {"translate":"スペクテイターモードでは登録できません","color":"red"}
execute if entity @s[gamemode=spectator] run scoreboard players reset @s RestoreItem

execute if score @s RestoreItem matches 1 run function skill:act/common/restore_item/save
execute if score @s RestoreItem matches 2 run function skill:act/common/restore_item/return/

data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].RestoreItemData set from storage tusb_player: RestoreItemData

scoreboard players reset @s RestoreItem
