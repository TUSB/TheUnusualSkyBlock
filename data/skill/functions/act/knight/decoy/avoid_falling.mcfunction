##############################
### 落下回避
##############################
execute if entity @s[nbt=!{FallDistance:0f}] run tp @s @a[distance=..6,sort=nearest,limit=1]
tag @s remove AvoidFalling2
