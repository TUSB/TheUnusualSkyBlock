##############################
### バードストライク tick
##############################

#Motionを取得
data modify storage calc: Motion set from entity @s Motion
data modify storage calc: Motion[1] set value -2d
#ダメージをロード
function skill:damage/load
#適用
execute positioned ~-4 ~1 ~-4 as @e[dx=8,dy=20,dz=8,tag=Mob] at @s run function skill:act/hunter/bird_strike/tick_mob
#演出
function makeup:skill/act/hunter/bird_strike/tick
