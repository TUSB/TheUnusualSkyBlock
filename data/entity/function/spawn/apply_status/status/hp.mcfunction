#> entity:spawn/apply_status/status/hp

### 最大HPを計算する
execute store result score _ _ run data get storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" 100
execute store result score _ Calc run data get storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" 100
execute store result score @s HPMax run function entity:spawn/apply_status/status/calc
