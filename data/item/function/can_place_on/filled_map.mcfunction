#> item:can_place_on/filled_map
# 地図
execute store result score _ _ run data get storage item: Items[0].components."minecraft:map_id"
execute if score _ _ matches ..-1 run data modify storage item: Items[0].components."minecraft:map_id" set value 0
