#ダメージと装備を保存
function oh_my_dat:please
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].SelectedItem set from storage item: SelectedItem
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Equipments set from storage item: Equipments

#物理ダメージを保存
function skill:damage/save/physical
#属性ダメージを保存
function skill:damage/save/elemental
