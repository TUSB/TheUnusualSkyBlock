#> area:one_second
# -> 10秒処理。
execute if score $Seconds Count matches 0 run function area:ten_seconds

### 通常世界 脅威島
execute in area:skylands positioned 39 6 -557 if entity @a[distance=..10] run function area:system/skylands/threat
execute in area:skylands positioned 39 318 -557 if entity @a[distance=..10] run function area:system/skylands/threat

### 通常世界 エンダーチェスト島
execute in area:skylands positioned 67 110 -718 if entity @a[distance=..30] run function area:system/skylands/enderchest
