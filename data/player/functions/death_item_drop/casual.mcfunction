#> player:death_item_drop/casual
#
# 墓処理
#
# @within function player:death_item_drop/

# 墓の中に墓は入れません
    clear @s stone_sword{tag:{Tomb:1b}}

# 墓をドロップして内部に情報を書き入れる
    summon item ~ ~ ~ {Glowing:1b,Health:32767,Item:{id:"minecraft:stone_sword",Count:1b,tag:{CustomModelData:1000,CustomAttributes:1b,HideFlags:123,Unbreakable:true,Tomb:1b,display:{Name:'{"translate":"<死んだプレイヤーの名前>の墓","color":"#FFFFFF","bold":true,"italic":false}',Lore:['{"translate":"名前が彫り込まれた者でないと","color":"#CCCCCC","italic":false}','{"translate":"掘り起こす事は出来ないようだ。","color":"#CCCCCC","italic":false}','[{"text":"","color":"white","italic":false},{"text":"C","font":"icon","color":"light_purple"},{"text":" 墓掘り"}]','{"text":"---TUSBMemory---","obfuscated":true,"color":"gray","italic":false}']},Skill:{Type:"TUSBMemory",Initializing:1b,Job:"共通",Name:"墓掘り",Level:1,Interval:0,Trigger:"スニークする",Count:1}}}}
    data modify entity @e[type=item,distance=..0.01,sort=nearest,limit=1] Item.tag.DeathInventory set from entity @s Inventory
    clear @s