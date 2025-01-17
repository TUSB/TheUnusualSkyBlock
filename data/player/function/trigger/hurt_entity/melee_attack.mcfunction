#> player:trigger/hurt_entity/melee_attack
### 近接攻撃

#装備を取得
function player:load_equipments
#物理ダメージ取得
function skill:damage/add/physical/melee
### 黒魔導士＜ライトニングブロー＞
execute if score @s LightningBlow matches 1.. run function skill:act/black_mage/lightning_blow/hit

#スキル用装備リスト
function skill:equipments_to_items
data remove storage item: Item
data modify storage item: Item set from storage item: Items[{components:{"minecraft:custom_data":{Skill:{Trigger:"近接攻撃する"}}}}]

### 忍者＜連舞＞
execute if score @s TsuremaiLevel matches 1.. run function skill:act/ninja/tsuremai/trigger/attack

#属性ダメージ付与
execute unless data storage item: Item.components."minecraft:custom_data".Skill.Damage{Melee:1b} run data modify storage skill: Damage set value {Hit:1b}
execute unless data storage item: Item.components."minecraft:custom_data".Skill.Damage{Melee:1b} at 0-0-0-0-2 as @e[tag=Enemy,nbt=!{AbsorptionAmount:2048f},distance=0] run function skill:damage/apply/elemental

### エンチャント
#波動
execute if data storage item: SelectedItem.components."minecraft:enchantments".levels."tusb:波動" at 0-0-0-0-2 run function skill:enchant/wave_of_element/
#血吸
execute if data storage item: SelectedItem.components."minecraft:enchantments".levels."tusb:血吸" run function skill:enchant/life_leech
#魔吸
execute if data storage item: SelectedItem.components."minecraft:enchantments".levels."tusb:魔吸" run function skill:enchant/mana_leech

### スキル
execute if data storage item: Item.components."minecraft:custom_data".Skill{Trigger:"近接攻撃する"} run function skill:practice/

#近接スキルの場合、物理ダメージはスキル側で計算するため0にする
execute if data storage item: Item.components."minecraft:custom_data".Skill.Damage{Melee:1b} at 0-0-0-0-2 run data modify entity @e[tag=Enemy,nbt=!{AbsorptionAmount:2048f},distance=0,limit=1] AbsorptionAmount set value 2048f

### 剣の薙ぎ払いの初期設定
#剣能
execute if data storage item: SelectedItem.components."minecraft:enchantments".levels."tusb:剣能" run function skill:enchant/sweeping/init
