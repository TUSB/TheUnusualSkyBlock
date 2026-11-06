#> ai:skill/change_status/
data modify storage tusb_mob: "遅延ステータス"."ステータス" set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]."ステータス" 

execute if data storage mob_data: Call.Level run function ai:skill/change_status/level/
execute if data storage mob_data: Call.HP run function ai:skill/change_status/hp
execute if data storage mob_data: Call.MP run function ai:skill/change_status/mp
execute if data storage mob_data: Call.Attack run function ai:skill/change_status/attack
execute if data storage mob_data: Call.Defense run function ai:skill/change_status/defense
execute if data storage mob_data: Call.MagicAttack run function ai:skill/change_status/magic_attack
execute if data storage mob_data: Call.MagicDefense run function ai:skill/change_status/magic_defense
execute if data storage mob_data: Call.UnreasonableAttack run function ai:skill/change_status/unreasonable_attack
execute if data storage mob_data: Call.UnreasonableDefense run function ai:skill/change_status/unreasonable_defense

#データを元に戻す
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]."ステータス" set from storage tusb_mob: "遅延ステータス"."ステータス"

# ライフスカウター
execute if entity @s[tag=LifeScouter] run function skill:act/common/life_scouter/bar_set
