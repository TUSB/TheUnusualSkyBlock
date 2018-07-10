##############################
### 呪詛処理
##############################

kill @e[type=minecraft:item,distance=..10,nbt={Age:0s}]
tellraw @a [{"text":"","color":"yellow"},{"selector":"@s"},"にかけられた",{"text":"呪詛","color":"white","hoverEvent":{"action":"show_text","value":"死亡時にアイテムが残らなくなる。","color":"white"}},"によってアイテムが消滅してしまった…"]
tag @s remove Curse
