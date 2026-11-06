#> calc:set/random_rotation
#
# 向きをランダムにする
execute store result entity @s Rotation[0] float 0.01 run random value 0..35999
execute store result entity @s Rotation[1] float 0.01 run random value -9000..9000
