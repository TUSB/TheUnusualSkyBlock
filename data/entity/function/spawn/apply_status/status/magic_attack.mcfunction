#> entity:spawn/apply_status/status/magic_attack

### 魔法攻撃力を計算する
execute store result score _ _ run data get storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力".baseStatus 100
execute store result score _ Calc run data get storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力".status 100
execute store result score @s MagicAttack run function entity:spawn/apply_status/status/calc
