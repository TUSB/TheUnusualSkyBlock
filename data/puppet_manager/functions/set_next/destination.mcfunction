##############################
### からくり移動先チェック
##############################

###Motion付与
execute store result entity @s Motion[0] double 0.00002 run scoreboard players get $DestinationX PuppetScore
execute store result entity @s Motion[2] double 0.00002 run scoreboard players get $DestinationZ PuppetScore

###位置調整
execute positioned as @s run tp @s ~ ~-300 ~

###落下時は下向きのMotionも付与
execute if score $Falling PuppetScore matches 1 store result entity @s Motion[1] double -1 run scoreboard players set $1 Const 1

###初期化タグ削除
tag @s remove Initializing
