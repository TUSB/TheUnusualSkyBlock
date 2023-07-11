#指定の穴にTP
execute if entity @s[gamemode=adventure] store result score _ Calc run data get storage area: Void.StartHole
execute if entity @s[gamemode=adventure] run function area:system/void/teleport0

# トリガー解除
advancement revoke @s only area:entered/void
# 設定反映
function settings:area/void
function area:entered/
# 演出表示
function makeup:area/entered/void

# ピクニックなら無限奈落専用処理実行
execute if data storage main: difficult{world:"picnic"} run function main:difficulty/void
