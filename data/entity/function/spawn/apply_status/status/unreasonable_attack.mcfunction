#> entity:spawn/apply_status/status/unreasonable_attack

### 理外攻撃力を計算する
execute store result score _ _ run data get storage tusb_mob: "遅延ステータス"."ステータス"."理外攻撃力".baseStatus 100
execute store result score _ Calc run data get storage tusb_mob: "遅延ステータス"."ステータス"."理外攻撃力".status 100
execute store result score @s UnreasonableAttack run function entity:spawn/apply_status/status/calc
