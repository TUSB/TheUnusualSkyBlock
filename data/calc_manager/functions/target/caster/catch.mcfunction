##############################
### 遠隔攻撃ターゲットを取得する
##############################

### 必ず
### function calc_manager:target/caster/release
### を呼んでお片付けすること

tag @s add CasterPlayer

scoreboard players set $Depth Global 10
execute positioned ^ ^ ^0.1 run function calc_manager:target/caster/catch_loop

tag @s remove CasterPlayer
