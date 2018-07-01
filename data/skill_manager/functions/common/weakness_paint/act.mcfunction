##############################
### ウィークペイント発動
##############################

###ウィークペイント設定
tag @e[distance=..5,type=snowball,tag=!Initialized,sort=nearest,limit=1] add WeakPaint
scoreboard players operation @e[distance=..5,type=snowball,tag=!Initialized,sort=nearest,limit=1] ProjectileSkill = @s ModeSkill

###---演出---Start
###---演出---End
