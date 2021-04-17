#属性ダメージ計算
function skill:enchant/elemental_damage/add
function skill:enchant/elemental_damage/boost/
#付与
execute as @e[tag=Mob,nbt=!{HurtTime:0s},distance=..7] run function skill:enchant/elemental_damage/apply
#波動
execute if data storage item: SelectedItem.tag.Enchantments[{id:"tusb:波動"}] at @e[tag=Mob,nbt=!{HurtTime:0s},distance=..7,limit=1,sort=nearest] run function skill:enchant/elemental_damage/wave_of_element
