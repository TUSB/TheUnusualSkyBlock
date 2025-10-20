##############################
### バードストライク tick_mob
##############################

function skill:damage/apply/
#空中の敵は2回ダメージ判定
execute if entity @s[nbt={OnGround:0b}] run function skill:damage/apply/
#Motion書き換え
data modify entity @s Motion set from storage calc: Motion
