##############################
### アーマースタンドトリガー
##############################

###印版設置
execute as @e[tag=SignStand,distance=..7,limit=1,sort=nearest] positioned as @s run function item_manager:sign/set/place/fork

### トリガーリセット
scoreboard players reset @s UseArmorStand
