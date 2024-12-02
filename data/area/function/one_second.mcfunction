#> area:one_second
# -> 10秒処理
## 使用するときにコメントアウトを外してください。
# execute if score $Seconds Count matches 0 run function area:ten_seconds

# 地下世界 食料の腐敗処理
execute as @a[predicate=area:system/underworld/in_water] run function area:system/underworld/food_rot
