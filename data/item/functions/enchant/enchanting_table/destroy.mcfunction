# カスタムエンチャントテーブルを破壊する
execute on passengers run data modify entity @s Items[{tag:{NoHold:1b}}].Count set value 0b
execute on passengers run kill @s
kill @s
tp @e[type=item,distance=..1] ~ ~1 ~ ~ ~
