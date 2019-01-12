##############################
### ミミック本体スポーン召喚 - Event  
##############################

##ここに本体
summon skeleton ~ ~ ~
say 成功
##ブロック消去と自身を消去
setblock ~ ~ ~ air replace
tag @s add Garbage
