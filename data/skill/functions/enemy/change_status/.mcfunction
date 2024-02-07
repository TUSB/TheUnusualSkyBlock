data modify storage tusb_mob: "遅延ステータス"."ステータス" set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]."ステータス" 

execute if data storage mob_data: Call.Level run function skill:enemy/change_status/level/
execute if data storage mob_data: Call.ElementFire run function skill:enemy/change_status/element_fire
execute if data storage mob_data: Call.ElementIce run function skill:enemy/change_status/element_ice
execute if data storage mob_data: Call.ElementLightning run function skill:enemy/change_status/element_lightning
execute if data storage mob_data: Call.ElementLight run function skill:enemy/change_status/element_light
execute if data storage mob_data: Call.ElementDark run function skill:enemy/change_status/element_dark
execute if data storage mob_data: Call.HP run function skill:enemy/change_status/hp
execute if data storage mob_data: Call.MP run function skill:enemy/change_status/mp
execute if data storage mob_data: Call.Attack run function skill:enemy/change_status/attack
execute if data storage mob_data: Call.Defense run function skill:enemy/change_status/defense
execute if data storage mob_data: Call.SpecialAttack run function skill:enemy/change_status/special_attack
execute if data storage mob_data: Call.SpecialDefense run function skill:enemy/change_status/special_defense

#データを元に戻す
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]."ステータス" set from storage tusb_mob: "遅延ステータス"."ステータス"

# ライフスカウター
execute if entity @s[tag=LifeScouter] run function skill:act/common/life_scouter/bar_set