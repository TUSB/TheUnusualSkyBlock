##############################
### からくり移動本処理(PuppetNextのリンクを１コマンドで済ませるためのサブルーチン)
##############################


###地上アクロバットOFF化
#execute positioned ~ ~-1 ~ if entity @e[dy=-10,tag=ActivePuppet,limit=1] run scoreboard players set $Acrobat PuppetScore 0



###通常の移動(アクロバットOFFかつ落下OFF)
execute if score $Acrobat PuppetScore matches ..0 if score $Falling PuppetScore matches ..0 run tp @e[distance=..2,x_rotation=-85..85,tag=ActivePuppet,limit=1] ~ ~ ~
###アクロバット移動
execute if score $Acrobat PuppetScore matches 1.. run tp @e[distance=..2,tag=ActivePuppet,limit=1] ~ ~ ~
###落下移動
execute if score $Falling PuppetScore matches 1.. run tp @e[distance=..2,tag=ActivePuppet,limit=1] ~ ~ ~
