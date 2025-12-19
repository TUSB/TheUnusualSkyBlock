#> skill:act/white_mage/araise/raise_check
#
# レイズ発動チェック

# 蘇生先tp位置呼び出し
function #oh_my_dat:please
data modify storage tusb_player: Raise set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Raise

# 奈落(y<-50)もしくはボス戦中の場合、復活不可能
execute store result score _ _ run data get storage tusb_player: Raise.Pos[1] 100
execute if score _ _ matches -5000.. unless data storage main: {bossfight:1b} run function skill:act/white_mage/araise/raised
execute unless score _ _ matches -5000.. run tellraw @s [{"translate":"帰還地点は消滅していた…。","color": "yellow"}]
execute if data storage main: {bossfight:1b} run tellraw @s [{"translate":"強大な力で復活を阻止された！","color": "yellow"}]
# 奈落もしくはボス戦中かつスポーンポイントが無いならば初期地点へテレポートする
execute unless score _ _ matches -5000.. unless data entity @s SpawnForced run function player:rise/none_spawn_point
execute if data storage main: {bossfight:1b} unless data entity @s SpawnForced run function player:rise/none_spawn_point

# タグ削除
tag @s remove Raise
