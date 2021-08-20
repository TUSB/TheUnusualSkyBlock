#装備を投射物のoh_my_datからロード
function oh_my_dat:please
data modify storage item: SelectedItem set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].SelectedItem
data modify storage item: Equipments set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Equipments

#物理ダメージをロード
function skill:damage/load/physical
#属性ダメージをロード
function skill:damage/load/elemental

### スキル
execute if entity @s[tag=Skill] run function player:trigger/projectile/skill
