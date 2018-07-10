##############################
### トント被ダメ時処理
##############################

scoreboard players remove @s TntCount 10
scoreboard players operation $Count Global = @s TntCount
scoreboard players operation $Count Global /= $10 Const
### トントスコア表示
tellraw @s {"score":{"name":"$Count","objective":"Global"},"color":"dark_red","bold":true}
### トント爆発処理呼び出し
execute if score @s TntCount matches ..9 run function effect_manager:tnt/ignite
###---演出---Start
execute if score @s TntCount matches 0.. run playsound minecraft:entity.creeper.primed master @a[distance=..16] ~ ~ ~ 2 2
###---演出---End
