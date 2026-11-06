#> skill:act/knight/odin_slash/act0
#
# 斬鉄剣発動
scoreboard players set @s OdinSlash 39

# プレイヤーデータ保存
function #oh_my_dat:please
# レベル
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].OdinSlash.Level int 1 run scoreboard players get _ Level

# 演出
function makeup:skill/act/knight/odin_slash/act
