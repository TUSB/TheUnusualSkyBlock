### 投射物による攻撃

#装備を取得
function player:load_equipments
#物理ダメージ取得
function player:damage_dealt

### スキル

### エンチャント
#属性ダメージ
execute at @e[tag=Mob,nbt=!{HurtTime:0s}] run function skill:enchant/elemental_damage/trigger/hit_projectile

##Mobダメージ反映
execute as @e[tag=Mob,nbt=!{HurtTime:0s}] run function entity:enemy/update_health
#トリガーリセット
advancement revoke @s only player:trigger/hurt_entity/hit_projectile
