##############################
### アーマースタンドトリガー
##############################

###印版設置
execute as @e[tag=Sign,distance=..7,limit=1,sort=nearest] positioned as @s run function item_manager:sign/set/place

### トリガーリセット
scoreboard players reset @s UseArmorStand
