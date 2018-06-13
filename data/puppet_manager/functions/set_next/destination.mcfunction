##############################
### からくり移動先チェック
##############################

###Motion値計算
execute if score $Speed PuppetScore matches ..99 run scoreboard players set $M Global 20
execute if score $Speed PuppetScore matches 100..199 run scoreboard players set $M Global 40
execute if score $Speed PuppetScore matches 200.. run scoreboard players set $M Global 80
function calc_manager:multiply/pos1
###Motion設定
function calc_manager:set/motion1


###位置調整
execute positioned as @s run tp @s ~ ~-300 ~

###アクロバットOFFで落下ONの時は強く下向きのMotionを付与
execute if score $Acrobat PuppetScore matches ..0 if score $Falling PuppetScore matches 1.. store result entity @s Motion[1] double -1 run scoreboard players set $1 Const 1
###アクロバットOFFで落下OFFの時も少し下向きのMotionを付与
execute if score $Acrobat PuppetScore matches ..0 if score $Falling PuppetScore matches ..0 store result entity @s Motion[1] double -0.02 run scoreboard players set $1 Const 1
###少し落下する判定にしておく
scoreboard players remove $Y1 Global 100
###アクロバットONで落下ONの時は、演算結果そのまま代入をする
##移動速度１
execute if score $Speed PuppetScore matches ..99 if score $Acrobat PuppetScore matches 1.. store result entity @s Motion[1] double 0.0002 run scoreboard players get $Y1 Global
##移動速度２
execute if score $Speed PuppetScore matches 100..199 if score $Acrobat PuppetScore matches 1.. store result entity @s Motion[1] double 0.0004 run scoreboard players get $Y1 Global
##移動速度３
execute if score $Speed PuppetScore matches 200.. if score $Acrobat PuppetScore matches 1.. store result entity @s Motion[1] double 0.0008 run scoreboard players get $Y1 Global

###初期化タグ削除
tag @s remove Initializing
