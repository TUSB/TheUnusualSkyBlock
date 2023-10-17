#ダブルブレイク 確率で耐久を2減らす

execute store result entity @s item.tag.Count float 0.99999 run data get entity @s item.tag.Count
function makeup:enemy/break_spawner/double_break
