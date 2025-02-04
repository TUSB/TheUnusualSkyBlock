#> player:trigger/hurt_entity/hit_projectile
### 投射物による攻撃

#投射物からロード
execute at 0-0-0-0-2 as @e[type=#entity:projectiles,limit=1,sort=nearest] run function player:trigger/projectile/load

#物理ダメージ付与
data modify storage entity: damage.hit set value 1b
execute at 0-0-0-0-2 as @e[tag=Enemy,nbt=!{AbsorptionAmount:2048f},distance=0] run function entity:damage/apply/physical

#狩人バースト用フラグ
tag @s add BurstArrow
