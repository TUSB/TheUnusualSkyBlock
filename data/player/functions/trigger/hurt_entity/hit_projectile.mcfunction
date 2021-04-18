### 投射物による攻撃

#装備を投射物のoh_my_datからロード
execute at @e[tag=Mob,nbt=!{HurtTime:0s}] as @e[type=#minecraft:impact_projectiles,limit=1,sort=nearest] run function player:trigger/shot_projectile/load
#物理ダメージ計算・付与
function player:damage_dealt/projectile

### スキル

### エンチャント
#属性ダメージ
function skill:enchant/elemental_damage/

##Mobダメージ反映
execute as @e[tag=Mob,nbt=!{HurtTime:0s}] run function entity:enemy/update_health
#トリガーリセット
advancement revoke @s only player:trigger/hurt_entity/hit_projectile
