##############################
### からくり移動先チェック
##############################

###Motion付与
execute store result entity @s Motion[0] double 0.00002 run scoreboard players get $DestinationX PuppetScore
execute store result entity @s Motion[2] double 0.00002 run scoreboard players get $DestinationZ PuppetScore

###位置調整
execute positioned as @s run tp @s ~ ~-300 ~

###アクロバットOFFで落下ONの時は下向きのMotionも付与
execute if score $Acrobat PuppetScore matches ..0 if score $Falling PuppetScore matches 1.. store result entity @s Motion[1] double -1 run scoreboard players set $1 Const 1
###アクロバットONで落下ONの時は、演算結果そのまま代入をする
execute if score $Acrobat PuppetScore matches 1.. store result entity @s Motion[1] double 0.00002 run scoreboard players get $DestinationY PuppetScore

###初期化タグ削除
tag @s remove Initializing
