##############################
### サモン：ぷちブラック tick
##############################

#Calc6で拡大終了、発射
scoreboard players add @s Calc 1
execute if score @s Calc matches 6 run data modify entity @s Marker set value 0b
execute if score @s Calc matches 6 run function makeup:skill/act/summoner/petit_black/launch

#Motionで移動
execute if score @s Calc matches 6.. in area:control_area positioned 0.0 0.0 0.0 positioned ^ ^ ^0.25 run function calc:geometry/tp_00000
execute if score @s Calc matches 6.. run data modify entity @s Motion set from entity 0-0-0-0-0 Pos

#10tickごとにダメージ用カウント
scoreboard players add @s Interval 1
scoreboard players set @s[scores={Interval=11}] Interval 1
scoreboard players operation _ Interval = @s Interval
#ダメージをロード
execute if score _ Interval matches 10 run function skill:damage/load

#モブとの距離を計算し重力、ダメージ適用
scoreboard players set _ Calc 80
scoreboard players operation _ Calc *= @s Level
execute as @e[tag=Mob,distance=..8] run function skill:act/summoner/petit_black/tick_mob

#演出
function makeup:skill/act/summoner/petit_black/tick
