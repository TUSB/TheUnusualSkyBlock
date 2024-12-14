#> player:trigger/void_death/curse
#
# 呪詛・奈落処理
#
# @within function player:death_item_drop/
#         function player:trigger/void_death/

# 難易度デバッグなら中断
    execute if data storage main: difficult{world:"debug"} run return 0

#インベントリをoh_my_datに保存、消去
    function #oh_my_dat:please
    data modify storage item: Items set value []
    data modify storage item: Items set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].VoidItems

# エキスパート以外(カジュアル・ピクニック)処理
# as @s は普通無駄だけど、これが無かったら奈落死のときに記録されない。
    execute unless data storage main: difficult{world:"expert"} as @s run function player:trigger/void_death/difficult/casual
# エキスパート処理
    execute if data storage main: difficult{world:"expert"} run function player:trigger/void_death/difficult/expert

    execute if data storage item: Items[3000] run function player:trigger/void_death/delete_loop
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].VoidItems set from storage item: Items
    execute if entity @s[tag=Curse] run function makeup:effect/curse/death
    tag @s remove Curse
