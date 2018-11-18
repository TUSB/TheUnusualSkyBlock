##############################
### 毎ティック一時処理
##############################

scoreboard players operation $Flags Global = @s TemporaryEffects

###魅了(32)
execute if score $Flags Global matches ..-1 run function skill_manager:enemy/charm/tick

scoreboard players operation $Flags Global *= $2 Const
###幻影(31)
execute if score $Flags Global matches ..-1 run function skill_manager:enemy/blink/decorate/tick

scoreboard players operation $Flags Global *= $2 Const
###隼斬り遅延発動処理(30)
execute if score $Flags Global matches ..-1 run function skill_manager:knight/falcon_slash/decorate/tick
