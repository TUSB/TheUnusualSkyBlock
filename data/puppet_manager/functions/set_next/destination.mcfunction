##############################
### からくり移動先チェック
##############################

###Motion付与
##移動速度１
execute if score $Speed PuppetScore matches ..99 store result entity @s Motion[0] double 0.00002 run scoreboard players get $DestinationX PuppetScore
execute if score $Speed PuppetScore matches ..99 store result entity @s Motion[2] double 0.00002 run scoreboard players get $DestinationZ PuppetScore
##移動速度２
execute if score $Speed PuppetScore matches 100..199 store result entity @s Motion[0] double 0.00004 run scoreboard players get $DestinationX PuppetScore
execute if score $Speed PuppetScore matches 100..199 store result entity @s Motion[2] double 0.00004 run scoreboard players get $DestinationZ PuppetScore
##移動速度３
execute if score $Speed PuppetScore matches 200.. store result entity @s Motion[0] double 0.00008 run scoreboard players get $DestinationX PuppetScore
execute if score $Speed PuppetScore matches 200.. store result entity @s Motion[2] double 0.00008 run scoreboard players get $DestinationZ PuppetScore

###位置調整
execute positioned as @s run tp @s ~ ~-300 ~

###アクロバットOFFで落下ONの時は強く下向きのMotionを付与
execute if score $Acrobat PuppetScore matches ..0 if score $Falling PuppetScore matches 1.. store result entity @s Motion[1] double -1 run scoreboard players set $1 Const 1
###アクロバットOFFで落下OFFの時も少し下向きのMotionを付与
execute if score $Acrobat PuppetScore matches ..0 if score $Falling PuppetScore matches ..0 store result entity @s Motion[1] double -0.02 run scoreboard players set $1 Const 1
###少し落下する判定にしておく
scoreboard players remove $DestinationY PuppetScore 1000
###アクロバットONで落下ONの時は、演算結果そのまま代入をする
##移動速度１
execute if score $Speed PuppetScore matches ..99 if score $Acrobat PuppetScore matches 1.. store result entity @s Motion[1] double 0.00002 run scoreboard players get $DestinationY PuppetScore
##移動速度２
execute if score $Speed PuppetScore matches 100..199 if score $Acrobat PuppetScore matches 1.. store result entity @s Motion[1] double 0.00004 run scoreboard players get $DestinationY PuppetScore
##移動速度３
execute if score $Speed PuppetScore matches 200.. if score $Acrobat PuppetScore matches 1.. store result entity @s Motion[1] double 0.00008 run scoreboard players get $DestinationY PuppetScore

###初期化タグ削除
tag @s remove Initializing
