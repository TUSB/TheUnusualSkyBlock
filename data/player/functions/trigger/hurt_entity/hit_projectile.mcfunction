### 投射物による攻撃

#投射物からロード
execute at 0-0-0-0-2 as @e[type=#entity:projectiles,limit=1,sort=nearest] run function player:trigger/projectile/load

#物理・属性ダメージ付与
data modify storage skill: Damage set value {Hit:1b}
execute at 0-0-0-0-2 as @e[tag=Enemy,nbt=!{AbsorptionAmount:1000000f},distance=0] run function skill:damage/apply/

### エンチャント
#波動
execute if data storage item: SelectedItem.tag.Enchantments[{id:"tusb:波動"}] at 0-0-0-0-2 run function skill:enchant/wave_of_element/
#血吸
execute if data storage item: SelectedItem.tag.Enchantments[{id:"tusb:血吸"}] run function skill:enchant/life_leech
#魔吸
execute if data storage item: SelectedItem.tag.Enchantments[{id:"tusb:魔吸"}] run function skill:enchant/mana_leech

#属性ダメージ演出
execute at 0-0-0-0-2 run function makeup:skill/enchant/elemental_damage/hit

#狩人バースト用フラグ
tag @s add BurstArrow
