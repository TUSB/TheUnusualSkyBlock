#> entity:spawn/apply_status/status/unreasonable_attack
scoreboard players set _ _ 100
### 理外攻撃力を計算する
execute store result score _ Calc run data get storage tusb_mob: "遅延ステータス"."ステータス"."理外攻撃力" 0.5
scoreboard players operation _ Calc *= @s Level
scoreboard players operation _ Calc /= _ _
execute store result score @s UnreasonableAttack run scoreboard players add _ Calc 2
