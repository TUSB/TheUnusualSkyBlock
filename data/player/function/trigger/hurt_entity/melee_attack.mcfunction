#> player:trigger/hurt_entity/melee_attack
### 近接攻撃

#装備を取得
function player:load_equipments
#物理ダメージ取得
data remove storage entity: damage
function entity:damage/add/physical/melee
### 黒魔導士＜ライトニングブロー＞
# execute if score @s LightningBlow matches 1.. run function skill:act/black_mage/lightning_blow/hit

#スキル用装備リスト
function skill:equipments_to_items
data remove storage item: Item
data modify storage item: Item set from storage item: Items[{components:{"minecraft:custom_data":{Skill:{Trigger:"近接攻撃する"}}}}]

### 忍者＜連舞＞
execute if score @s TsuremaiLevel matches 1.. run function skill:act/ninja/tsuremai/trigger/attack

#近接スキルの場合、物理ダメージはスキル側で計算するため0にする
execute if data storage item: Item.components."minecraft:custom_data".Skill.Damage{melee:1b} at 0-0-0-0-2 run data modify entity @e[tag=Enemy,nbt=!{AbsorptionAmount:2048f},distance=0,limit=1] AbsorptionAmount set value 2048f

### スキル
execute if data storage item: Item.components."minecraft:custom_data".Skill{Trigger:"近接攻撃する"} run function skill:practice/
