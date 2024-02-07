
### 斬鉄剣発動

function makeup:skill/act/knight/odin_slash/act

scoreboard players set @s OdinSlash 39

# プレイヤーデータ保存
function #oh_my_dat:please
# レベル
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].OdinSlash.Level int 1 run scoreboard players get _ Level
# 装備
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].OdinSlash.Equipments set from storage item: Equipments
