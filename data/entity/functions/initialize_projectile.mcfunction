### 飛翔物属性付与
tag @s[tag=!Cargo] add TickingRequired
tag @s add FlyingRequired
data modify entity @s[nbt={PortalCooldown:0}] PortalCooldown set value 200

### 矢のダメージ設定
execute if entity @s[type=#minecraft:arrows,nbt={pickup:0b}] unless score @s Attack matches 1.. store result entity @s damage double 1 run scoreboard players get @e[tag=Mob,limit=1,sort=nearest,distance=..3] Attack
data modify entity @s[type=#minecraft:arrows,nbt={pickup:0b,damage:0d}] damage set value 2d

### 雪玉系のダメージ設定
#微小なダメージを与えて描画を直す
execute if entity @s[type=#entity:non_damage_projectiles,tag=DelayedData] run damage @s 0.001

### CallOnAttack設定
tag @s[tag=CallOnAttack] add CallOnAttackProjectile
execute if entity @e[tag=Mob,tag=CallOnAttack,distance=..3,limit=1,sort=nearest] run tag @s add CallOnAttackProjectile
data modify entity @s[tag=CallOnAttackProjectile] Owner set from entity @e[tag=Mob,tag=CallOnAttack,limit=1,sort=nearest,distance=..3] UUID
