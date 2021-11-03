scoreboard players set _ _ 100
### 物理攻撃力を計算する
execute store result score _ Calc run data get storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" 0.5
scoreboard players operation _ Calc *= @s Level
scoreboard players operation _ Calc /= _ _
execute store result score @s Attack run scoreboard players add _ Calc 2
### 魔法攻撃力を計算する
execute store result score _ Calc run data get storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" 0.5
scoreboard players operation _ Calc *= @s Level
scoreboard players operation _ Calc /= _ _
execute store result score @s SpecialAttack run scoreboard players add _ Calc 2
### 投射物の攻撃力適用
execute store result entity @s[type=#arrows,scores={Attack=1..}] damage double 1 run scoreboard players get @s Attack
tag @s[type=#entity:projectiles,type=!#arrows,scores={Attack=1..}] add DamageProjectile
### 物理攻撃力をAttributeに保存する
execute store result entity @s[scores={Attack=1..}] Attributes[{Name:"minecraft:generic.attack_damage"}].Base double 1 run scoreboard players get @s Attack
