### 飛翔物属性付与
tag @s[tag=!Cargo] add TickingRequired
tag @s add FlyingRequired
data modify entity @s[nbt={PortalCooldown:0}] PortalCooldown set value 200

### 矢のダメージ設定
execute store result entity @s[type=#minecraft:arrows,nbt={pickup:0b}] damage double 1 run scoreboard players get @e[tag=Mob,limit=1,sort=nearest,distance=..3] Attack
