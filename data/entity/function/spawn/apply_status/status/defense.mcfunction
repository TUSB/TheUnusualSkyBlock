#> entity:spawn/apply_status/status/defense

### 物理防御力を計算する
execute store result score _ _ run data get storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" 100
execute store result score _ Calc run data get storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" 100
execute store result score @s Defense run function entity:spawn/apply_status/status/calc
