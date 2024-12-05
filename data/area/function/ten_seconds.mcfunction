#> area:ten_seconds
# -> 1分処理
## 使用するときにコメントアウトを外してください。
# execute if score $TenSeconds Count matches 0 run function area:one_minute

# 通常世界 大釜ホッパー島
execute in area:skylands if entity @s[x=162,y=38,z=-714,dx=32,dy=45,dz=32] run function area:system/skylands/hopper
