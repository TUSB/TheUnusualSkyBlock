### 近接攻撃

#装備を取得
function player:load_equipments
#物理ダメージ取得
function skill:damage/add/physical/melee
#属性ダメージ取得
function skill:damage/add/elemental

#属性ダメージ付与
execute as @e[tag=Mob,nbt=!{AbsorptionAmount:1000000f}] run function skill:damage/apply/elemental

### エンチャント
#波動
execute if data storage item: SelectedItem.tag.Enchantments[{id:"tusb:波動"}] at @e[tag=Mob,nbt=!{AbsorptionAmount:1000000f}] run function skill:enchant/wave_of_element
#血吸
execute if data storage item: SelectedItem.tag.Enchantments[{id:"tusb:血吸"}] run function skill:enchant/life_leech
#魔吸
execute if data storage item: SelectedItem.tag.Enchantments[{id:"tusb:魔吸"}] run function skill:enchant/mana_leech

### スキル
execute if data storage item: SelectedItem.tag.Skill{Trigger:"近接攻撃する"} run data modify storage item: Item set from storage item: SelectedItem
execute if data storage item: SelectedItem.tag.Skill{Trigger:"近接攻撃する"} run function skill:practice/

##AbsorptionAmountリセット
execute as @e[tag=Mob,nbt=!{AbsorptionAmount:1000000f}] run function entity:enemy/update_absorption_amount
#トリガーリセット
advancement revoke @s only player:trigger/hurt_entity/melee_attack

### 剣の薙ぎ払いの初期設定
#剣能
execute if data storage item: SelectedItem.tag.Enchantments[{id:"tusb:剣能"}] run function skill:enchant/sweeping/init
