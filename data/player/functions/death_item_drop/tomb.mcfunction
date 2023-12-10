#> player:death_item_drop/tomb
#
# 墓を生成
#
# @within function player:death_item_drop/casual

# 墓を生成
    data modify block 2 2 2 Items set value []
    data modify block 2 2 2 Items append value {id:"minecraft:stone_sword",Count:1b,tag:{CustomModelData:1000,CustomAttributes:1b,HideFlags:123,Unbreakable:true,Tomb:1b,display:{Name:'{"translate":"<死んだプレイヤーの名前>の墓","color":"#FFFFFF","bold":true,"italic":false}',Lore:['{"translate":"名前が彫り込まれた者でないと","color":"#CCCCCC","italic":false}','{"translate":"掘り起こす事は出来ないようだ。","color":"#CCCCCC","italic":false}','[{"text":"","color":"white","italic":false},{"text":"C","font":"icon","color":"light_purple"},{"text":" 墓掘り"}]','{"text":"---TUSBMemory---","obfuscated":true,"color":"gray","italic":false}']},Skill:{Type:"TUSBMemory",Initializing:1b,Job:"共通",Name:"墓掘り",Level:1,Interval:0,Trigger:"スニークする",Count:1}}}
    data modify block 2 2 2 Items[0].tag.DeathInventory set from entity @s Inventory
    data modify block 2 2 2 Items[0].tag.DeathUUID set from entity @s UUID
    clear @s
    
# 名前を入れるためにちょっと回りくどいことをする
    data modify storage item: Strings set value '{"translate":"%sの墓","color":"white","bold":true,"italic":false,"with":[{"selector":"@s","bold":false,"color":"yellow"}],"interpret":true}'
    execute in area:control_area run loot replace block 2 2 2 container.1 loot player:tomb
    execute in area:control_area run loot give @s mine 2 2 2 debug_stick
    data modify block 2 2 2 Items[0].tag.display.Name set from entity @s Inventory[1].tag.display.Name
    clear @s

# Oh_my_datに入れる
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DeathInventory append from block 2 2 2 Items[0]

# リセット
    data remove storage item: Strings