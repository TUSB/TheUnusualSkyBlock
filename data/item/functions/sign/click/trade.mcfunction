##############################
### 取引の印版
##############################

#white_wool 32 => emerald 1
execute store result score _ _ run clear @s white_wool 0
execute if score _ _ matches 32.. run clear @s white_wool 32
execute if score _ _ matches 32.. run give @s emerald 1

#演出
function makeup:item/sign/trade
