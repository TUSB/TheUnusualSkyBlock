
execute as @e[tag=KeyBlock.Block,distance=..7,limit=1,sort=nearest] run data modify storage area: key_block.key set from entity @s item.tag.key_block.key
execute store result score _ _ run data modify storage area: key_block.key set from entity @s SelectedItem.tag.key_block.key

# 鍵が合致したら破壊
execute if score _ _ matches 0 at @e[tag=KeyBlock.Key,distance=..7,limit=1,sort=nearest] positioned ~ ~0.5 ~ run function area:key_block/break
# 鍵が合致しなかったら演出
execute unless score _ _ matches 0 run function makeup:area/key_block/lock

advancement revoke @s only area:key_block/unlock