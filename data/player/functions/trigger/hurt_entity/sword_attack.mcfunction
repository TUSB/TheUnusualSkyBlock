### 剣による近接攻撃

#装備を取得
function player:load_equipments
#物理ダメージ取得
function player:damage_dealt/melee

### スキル

### エンチャント
#属性ダメージ
function skill:enchant/elemental_damage/
#血吸
execute if data storage item: SelectedItem.tag.Enchantments[{id:"tusb:血吸"}] run function skill:enchant/life_leech
#魔吸
execute if data storage item: SelectedItem.tag.Enchantments[{id:"tusb:魔吸"}] run function skill:enchant/mana_leech

#Mobダメージ反映
execute as @e[tag=Mob,nbt=!{HurtTime:0s},distance=..7] run function entity:enemy/update_health
#トリガーリセット
advancement revoke @s only player:trigger/hurt_entity/sword_attack

### 薙ぎ払いの初期設定
#剣能
execute if data storage item: SelectedItem.tag.Enchantments[{id:"tusb:剣能"}] run function skill:enchant/sweeping/init
