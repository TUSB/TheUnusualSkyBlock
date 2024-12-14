#> effect:freeze/set_rotation
### 凍結 AEC向き調整
data modify entity @s Rotation set from storage effects: Freeze.PlayerRotated
tag @s remove Initializing
