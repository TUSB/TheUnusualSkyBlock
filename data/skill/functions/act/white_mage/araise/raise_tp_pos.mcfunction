
### レイズリスポーンtp

# 座標移動
data modify entity @s Pos set from storage tusb_player: Raise.Pos
data modify entity @s Rotation set from storage tusb_player: Raise.Rotation

execute at @s run tp @a[tag=Raising] @s

#エンティティ削除
kill @s
