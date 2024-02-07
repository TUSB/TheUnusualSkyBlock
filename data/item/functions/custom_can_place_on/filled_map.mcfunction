# 地図
execute store result score _ _ run data get storage item: Items[0].tag.map
execute if score _ _ matches ..-1 run data modify storage item: Items[0].tag.map set value 0
