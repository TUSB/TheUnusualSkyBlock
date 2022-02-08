### 近接攻撃

#装備を取得
function player:load_equipments
#物理ダメージ取得
function skill:damage/add/physical/melee
#属性ダメージ取得
function skill:damage/add/elemental

#属性ダメージ付与
execute at 0-0-0-0-2 as @e[tag=Mob,nbt=!{AbsorptionAmount:1000000f},distance=0] run function skill:damage/apply/elemental

### エンチャント
#波動
execute if data storage item: SelectedItem.tag.Enchantments[{id:"tusb:波動"}] at 0-0-0-0-2 run function skill:enchant/wave_of_element/
#血吸
execute if data storage item: SelectedItem.tag.Enchantments[{id:"tusb:血吸"}] run function skill:enchant/life_leech
#魔吸
execute if data storage item: SelectedItem.tag.Enchantments[{id:"tusb:魔吸"}] run function skill:enchant/mana_leech

### スキル
execute if data storage item: SelectedItem.tag.Skill{Trigger:"近接攻撃する"} run data modify storage item: Item set from storage item: SelectedItem
execute if data storage item: SelectedItem.tag.Skill{Trigger:"近接攻撃する"} run function skill:practice/

#属性ダメージ演出
execute at 0-0-0-0-2 run function makeup:skill/enchant/elmental_damage/hit

### 剣の薙ぎ払いの初期設定
#剣能
execute if data storage item: SelectedItem.tag.Enchantments[{id:"tusb:剣能"}] run function skill:enchant/sweeping/init
