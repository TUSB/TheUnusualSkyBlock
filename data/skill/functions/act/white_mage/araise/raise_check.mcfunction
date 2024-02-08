
### レイズ発動チェック

# 蘇生先tp位置呼び出し
function #oh_my_dat:please
data modify storage tusb_player: Raise set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Raise

#奈落(y<-50)の場合、復活不可能
execute store result score _ _ run data get storage tusb_player: Raise.Pos[1] 100
execute if score _ _ matches -5000.. run function skill:act/white_mage/araise/raised
execute unless score _ _ matches -5000.. run tellraw @s [{"translate":"帰還地点は消滅していた…。","color": "yellow"}]

# タグ削除
tag @s remove Raise
