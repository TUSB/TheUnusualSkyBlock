##############################
### 衛星１つ目
##############################

execute store result score $Success Global run tag @s add Inverted
execute if score $Success Global matches 0 run tag @s remove Inverted
