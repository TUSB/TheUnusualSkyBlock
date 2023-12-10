#> player:death_item_drop/casual
#
# 墓処理
#
# @within function player:death_item_drop/

# 墓のアイテムディスプレイを召喚する
    summon item_display ~ ~ ~ {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.25f,0f],scale:[0.5f,0.5f,0.5f]},item:{id:"minecraft:stone_sword",Count:1b,tag:{CustomModelData:1000}},Tags:[Tomb,TombInit]}
    execute as @e[type=item_display,distance=..0.01,tag=TombInit] run function #oh_my_dat:please

# 墓の中に墓は入れません(墓に情報として保存する)
    data modify storage item: Items set from entity @s Inventory
    data modify storage item: Item set value []
    data modify storage item: Item append from storage item: Items[{tag:{Tomb:1b}}]
    execute if data storage item: Item[0] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DeathInventory append from storage item: Item[]
    clear @s stone_sword{Tomb:1b}

# 墓情報をディスプレイに刻む
    data modify storage item: Items set from entity @s Inventory
    execute if data storage item: Items[0] in area:control_area run function player:death_item_drop/tomb

# 名前を表示するためのtext_displayを呼び出す
    summon text_display ~ ~ ~ {billboard:"center",alignment:"center",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0f],scale:[1f,1f,1f]},text:'{"text":""}',Tags:[TombName,TombInit]}
    summon text_display ~ ~ ~ {billboard:"center",alignment:"center",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.8f,0f],scale:[0.75f,0.75f,0.75f]},text:'{"translate":"スニークで掘り起こそう！"}',Tags:[TombName,TombInit2]}
    ride @e[type=text_display,distance=..0.01,tag=TombInit,limit=1] mount @e[type=item_display,distance=..0.01,tag=TombInit,limit=1]
    ride @e[type=text_display,distance=..0.01,tag=TombInit2,limit=1] mount @e[type=item_display,distance=..0.01,tag=TombInit,limit=1]

# 名前を入れるためにちょっと回りくどいことをする
    data modify storage item: Strings set value '{"translate":"%sの墓","color":"white","bold":true,"italic":false,"with":[{"selector":"@s","bold":false,"color":"yellow"}],"interpret":true}'
    execute in area:control_area run loot replace block 2 2 2 container.0 loot player:tomb
    execute in area:control_area run loot give @s mine 2 2 2 debug_stick
    data modify entity @e[type=text_display,distance=..0.01,tag=TombInit,limit=1] text set from entity @s Inventory[0].tag.display.Name
    clear @s

# 墓を生成しない場合は削除
    execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DeathInventory[0] run kill @e[distance=..0.01,tag=TombInit]
    execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DeathInventory[0] run kill @e[distance=..0.01,tag=TombInit2]

# Oh_my_dat リセット
    function #oh_my_dat:please

# 初期化タグ外し
    tag @e[distance=..0.01,tag=TombInit] remove TombInit
    tag @e[distance=..0.01,tag=TombInit2] remove TombInit2
    data remove storage item: Strings