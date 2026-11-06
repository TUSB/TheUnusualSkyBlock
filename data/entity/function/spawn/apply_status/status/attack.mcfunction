#> entity:spawn/apply_status/status/attack

### 物理攻撃力を計算する
execute store result score _ _ run data get storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力".baseStatus 100
execute store result score _ Calc run data get storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力".status 100
execute store result score @s Attack run function entity:spawn/apply_status/status/calc

### 投射物の攻撃力適用
execute store result entity @s[type=#arrows,scores={Attack=1..}] damage double 1 run scoreboard players get @s Attack
tag @s[type=#entity:projectiles,type=!#arrows,scores={Attack=1..}] add DamageProjectile
### 物理攻撃力をAttributeに保存する
execute store result entity @s attributes[{id:"minecraft:attack_damage"}].base double 1 run scoreboard players get @s Attack
