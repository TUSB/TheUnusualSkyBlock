
### 毎ティック一時処理


scoreboard players operation _ TemporaryEffects = @s TemporaryEffects

###魅了(32)
execute if score _ TemporaryEffects matches ..-1 run function skill:enemy/charm/tick

scoreboard players set _ Calc 2
scoreboard players operation _ TemporaryEffects *= _ Calc
###幻影(31)
execute if score _ TemporaryEffects matches ..-1 run function skill:enemy/blink/activate/decorate/tick

scoreboard players set _ Calc 2
scoreboard players operation _ TemporaryEffects *= _ Calc
###隼斬り遅延発動処理(30)
execute if score _ TemporaryEffects matches ..-1 run function skill:act/knight/falcon_slash/decorate/tick

scoreboard players set _ Calc 2
scoreboard players operation _ TemporaryEffects *= _ Calc
###猛火斬ダメージ付与処理(29)
execute if score _ TemporaryEffects matches ..-1 run function skill:act/knight/raging_slash/tick

scoreboard players set _ Calc 2
scoreboard players operation _ TemporaryEffects *= _ Calc
###詠唱演出(28)
execute if score _ TemporaryEffects matches ..-1 run function skill:enemy/casting/act/