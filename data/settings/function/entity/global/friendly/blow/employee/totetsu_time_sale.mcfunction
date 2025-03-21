#Function
#セール中:通常に切り替え
#通常:10%でセール中に切り替え
execute store result score _ Calc run function calc:random
scoreboard players set _ _ 10
scoreboard players operation _ Calc %= _ _
execute if score @s MP matches 1 run scoreboard players set _ Calc 0
#切り替え処理
execute if score _ Calc matches 0 store success score @s MP if score @s MP matches 0
#トッテツ通常時
execute unless score @s MP matches 1 run data merge entity @s {PortalCooldown:3000,CustomName:'{"translate":"《武器防具》トッテツ","color":"#00FF00","bold":true}',CustomNameVisible:false}
execute if score _ Calc matches 0 unless score @s MP matches 1 run data modify entity @s ArmorItems[0].tag.SpawnTags set value [Global,Friendly,Blow,Employee,Totetsu1]
#トッテツタイムセール時
execute if score _ Calc matches 0 if score @s MP matches 1 run data merge entity @s {PortalCooldown:1000,CustomName:'{"translate":"《武器防具》タイムセール開催中！","color":"#00FF00","bold":true}',CustomNameVisible:true}
execute if score _ Calc matches 0 if score @s MP matches 1 run data modify entity @s ArmorItems[0].tag.SpawnTags set value [Global,Friendly,Blow,Employee,Totetsu2]
#アップデート処理
execute if score _ Calc matches 0 run function player:trigger/talk/update_offers
#Garbage削除
data modify entity 0-0-0-0-0 Tags set from storage mob_data: Tags
tag 0-0-0-0-0 remove Garbage
data modify storage mob_data: Tags set from entity 0-0-0-0-0 Tags
data modify entity 0-0-0-0-0 Tags set value []
