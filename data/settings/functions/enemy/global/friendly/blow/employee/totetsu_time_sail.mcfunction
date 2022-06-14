#Function
#切り替え処理
execute store success score @s MP if score @s MP matches 0
#トッテツ通常時
execute if score @s MP matches 0 run data modify entity @s {PortalCooldown:3000,CustomName:'{"translate":"トッテツ","color":"#00FF00","bold":true}',CustomNameVisible:false}
execute if score @s MP matches 0 run data modify entity @s ArmorItems[0].tag.SpawnTags set value [Global,Friendly,Blow,Employee,Totetsu1]
#トッテツタイムセール時
execute if score @s MP matches 1 run data modify entity @s {PortalCooldown:1000,CustomName:'{"translate":"タイムセール開催中！","color":"#00FF00","bold":true}',CustomNameVisible:true}
execute if score @s MP matches 1 run data modify entity @s ArmorItems[0].tag.SpawnTags set value [Global,Friendly,Blow,Employee,Totetsu2]
#アップデート処理
function player:trigger/talk/update_offers
tag @s remove Garbage
