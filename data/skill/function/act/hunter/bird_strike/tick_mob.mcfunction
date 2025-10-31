#> skill:act/hunter/bird_strike/tick_mob
#
# バードストライク tick_mob処理

# ダメージ付与
function skill:damage/apply/

# OnGround:0bの時にもう一度ダメージ付与
execute if entity @s[nbt={OnGround:0b}] run function skill:damage/apply/

# Motion書き換え
data modify entity @s Motion[1] set from storage calc: Motion

# 風邪デバフ付与
function effect:enemy_debuff/virus/apply
