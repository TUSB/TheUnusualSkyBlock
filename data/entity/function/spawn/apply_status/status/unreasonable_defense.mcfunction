#> entity:spawn/apply_status/status/unreasonable_defense

### 理外防御力を計算する
execute store result score _ _ run data get storage tusb_mob: "遅延ステータス"."ステータス"."理外防御力".baseStatus 100
execute store result score _ Calc run data get storage tusb_mob: "遅延ステータス"."ステータス"."理外防御力".status 100
execute store result score @s UnreasonableDefense run function entity:spawn/apply_status/status/calc
