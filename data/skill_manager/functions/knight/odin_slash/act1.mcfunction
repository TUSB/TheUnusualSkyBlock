##############################
### 斬鉄剣発動
##############################

###---演出---Start
playsound minecraft:entity.ender_dragon.growl master @a[distance=32] ~ ~ ~ 3 1.414
###---演出---End

###弾召喚
summon minecraft:armor_stand ~ ~0.8 ~ {Tags:[Initializing,OdinSlash1,CooldownRequired],PortalCooldown:10,NoGravity:true,Marker:true,Invisible:true}
execute rotated ~60 10 run tp @e[tag=Initializing,limit=1] ~ ~0.8 ~ ~ ~
###ダメージ設定
execute if score @s ModeSkill matches 11071 run scoreboard players set @e[tag=Initializing,limit=1] SkillAttribute 700
execute if score @s ModeSkill matches 11072 run scoreboard players set @e[tag=Initializing,limit=1] SkillAttribute 1100

###初期化タグ削除
tag @e[tag=Initializing,limit=1] remove Initializing
