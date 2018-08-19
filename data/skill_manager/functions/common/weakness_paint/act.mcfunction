##############################
### ウィークペイント発動
##############################

###ウィークペイント設定
tag @e[distance=..5,type=minecraft:snowball,tag=!Initialized,sort=nearest,limit=1] add WeakPaint
scoreboard players operation @e[distance=..5,type=minecraft:snowball,tag=!Initialized,sort=nearest,limit=1] ProjectileSkill = @s ModeSkill

###---演出---Start
playsound minecraft:entity.elder_guardian.hurt master @a[distance=..16] ~ ~ ~ 1 1
###---演出---End
