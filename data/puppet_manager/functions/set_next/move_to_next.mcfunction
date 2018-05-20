##############################
### からくり移動本処理(PuppetNextのリンクを１コマンドで済ませるためのサブルーチン)
##############################

###通常の移動
execute if score $Falling PuppetScore matches ..0 run tp @e[distance=..2,x_rotation=-85..85,tag=ActivePuppet,limit=1] ~ ~ ~
###落下時だけ特別移動
execute if score $Falling PuppetScore matches 1.. run tp @e[distance=..2,tag=ActivePuppet,limit=1] ~ ~ ~
