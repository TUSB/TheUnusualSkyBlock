##############################
### からくり移動本処理(PuppetNextのリンクを１コマンドで済ませるためのサブルーチン)
##############################

###落下判定
execute store result score $Falling PuppetScore if entity @s[nbt={OnGround:false}]
execute store result score $TooLow PuppetScore if entity @e[tag=ActiveDownSearcher,limit=1,nbt={OnGround:false}]

###通常の移動(アクロバットOFFかつ落下OFF)
execute if score $Acrobat PuppetScore matches ..0 if score $Falling PuppetScore matches ..0 if score $TooLow PuppetScore matches ..0 run tp @e[distance=..2,x_rotation=-85..85,tag=ActivePuppet,limit=1] ~ ~ ~
###アクロバット移動
execute if score $Acrobat PuppetScore matches 1.. run tp @e[distance=..2,tag=ActivePuppet,limit=1] ~ ~ ~
###落下移動
execute if score $Falling PuppetScore matches 1.. run tp @e[distance=..2,tag=ActivePuppet,limit=1] ~ ~ ~
