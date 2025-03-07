### 投射物による攻撃

#投射物からロード
execute at 0-0-0-0-2 as @e[type=#entity:projectiles,limit=1,sort=nearest] run function player:trigger/projectile/load

#物理・属性ダメージ付与
data modify storage skill: Damage set value {Hit:1b}
execute at 0-0-0-0-2 as @e[tag=Enemy,nbt=!{AbsorptionAmount:1000000f},distance=0] run function skill:damage/apply/

#狩人バースト用フラグ
tag @s add BurstArrow
