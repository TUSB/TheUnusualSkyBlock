#> player:death_item_drop/casual
#
# 墓処理
#
# @within function player:death_item_drop/

# インベントリが空なら墓の出しようがないので中断
    execute unless data entity @s Inventory[0] run return fail

# 墓のアイテムディスプレイを召喚する
    summon item_display ~ ~ ~ {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.25f,0f],scale:[0.5f,0.5f,0.5f]},item:{id:"minecraft:stone_sword",count:1,components:{"minecraft:custom_model_data":1000}},Tags:[Tomb,TombInit]}
    execute as @e[type=item_display,distance=..0.01,tag=TombInit] run function #oh_my_dat:please

# 墓の中に墓は入れません(墓に情報として保存する)
    data modify storage item: Items set from entity @s Inventory
    data modify storage item: Item set value []
    data modify storage item: Item append from storage item: Items[{components:{"minecraft:custom_data":{Tomb:1b}}}]
    execute if data storage item: Item[0] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DeathInventory append from storage item: Item[]
    data remove storage item: Items[{id:"minecraft:stone_sword",components:{"minecraft:custom_data":{Tomb:1b}}}]

# 墓情報をディスプレイに刻む
    execute if data storage item: Items[0] in area:control_area run function player:death_item_drop/tomb

# 名前を表示するためのtext_displayを呼び出す
    summon text_display ~ ~ ~ {billboard:"center",alignment:"center",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0f],scale:[1f,1f,1f]},text:'{"text":""}',Tags:[TombName,TombInit]}
    summon text_display ~ ~ ~ {billboard:"center",alignment:"center",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.8f,0f],scale:[0.75f,0.75f,0.75f]},text:'{"translate":"スニークで掘り起こそう！"}',Tags:[TombName,TombInit2]}
    ride @e[type=text_display,distance=..0.01,tag=TombInit,limit=1] mount @e[type=item_display,distance=..0.01,tag=TombInit,limit=1]
    ride @e[type=text_display,distance=..0.01,tag=TombInit2,limit=1] mount @e[type=item_display,distance=..0.01,tag=TombInit,limit=1]

# 名前を入れる
    execute in area:control_area run item replace block 2 2 2 container.0 with stone
    execute in area:control_area run item modify block 2 2 2 container.0 {"function":"set_name","name":{"translate":"%sの墓","color":"white","bold":true,"italic":false,"with":[{"selector":"@s","bold":false,"color":"yellow"}]},"entity":"this",target:"item_name"}
    execute as @e[type=text_display,distance=..0.01,tag=TombInit,limit=1] in area:control_area run data modify entity @s text set from block 2 2 2 Items[0].components."minecraft:item_name"

# Oh_my_dat リセット
    function #oh_my_dat:please

# 初期化タグ外し
    tag @e[distance=..0.01,tag=TombInit] remove TombInit
    tag @e[distance=..0.01,tag=TombInit2] remove TombInit2
