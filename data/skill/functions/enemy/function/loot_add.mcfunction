# 対象のMobにDeathLootTableを追加する。

function #oh_my_dat:please
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]."ステータス".LootTable append from storage mob_data: LootTable
tag @s[tag=!HasLootTable] add HasLootTable

#> シート上に追加するfunctionのテンプレート
#
# data modify storage mob_data: LootTable set value {Item:{},Chance:1.0d,Count:1}
# execute as @e[<変更対象>,tag=!<重複処理させないようにするタグ>] run function skill:enemy/function/loot_add
# tag @e[<変更対象>] add <重複処理させないようにするタグ>
# function #oh_my_dat:please
#
