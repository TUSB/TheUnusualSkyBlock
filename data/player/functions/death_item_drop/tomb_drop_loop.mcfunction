#> player:death_item_drop/tomb_drop_loop
#
# 墓ドロップ ループ処理
#
# @within function player:death_item_drop/tomb_drop

summon item ~ ~ ~ {Glowing:1b,Health:32767,Tags:[TombItem],Item:{id:"minecraft:stone_sword",Count:1b,tag:{CustomModelData:1000,CustomAttributes:1b,HideFlags:123,Unbreakable:true,Tomb:1b,display:{Name:'{"translate":"<死んだプレイヤーの名前>の墓","color":"#FFFFFF","bold":true,"italic":false}',Lore:['{"translate":"名前が彫り込まれた者でないと","color":"#CCCCCC","italic":false}','{"translate":"掘り起こす事は出来ないようだ。","color":"#CCCCCC","italic":false}','[{"text":"","color":"white","italic":false},{"text":"C","font":"icon","color":"light_purple"},{"text":" 墓掘り"}]','{"text":"---TUSBMemory---","obfuscated":true,"color":"gray","italic":false}']},Skill:{Type:"TUSBMemory",Initializing:1b,Job:"共通",Name:"墓掘り",Level:1,Interval:0,Trigger:"スニークする",Count:1}}}}
data modify entity @e[type=item,distance=..1,tag=TombItem,sort=nearest,limit=1] Item.tag.DeathInventory set from storage item: Item[0].tag.DeathInventory
data modify entity @e[type=item,distance=..1,tag=TombItem,sort=nearest,limit=1] Item.tag.DeathUUID set from storage item: Item[0].tag.DeathUUID
data modify entity @e[type=item,distance=..1,tag=TombItem,sort=nearest,limit=1] Item.tag.display.Name set from storage item: Item[0].tag.display.Name
tag @e[type=item,distance=..1,tag=TombItem,sort=nearest,limit=1] remove TombItem
data remove storage item: Item[0]
execute if data storage item: Item[0] run function player:death_item_drop/tomb_drop_loop