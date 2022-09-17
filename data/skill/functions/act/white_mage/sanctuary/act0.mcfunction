##############################
### サンクチュアリ発動
##############################

summon armor_stand ~ ~ ~ {Tags:[Skill,Sanctuary,NativeTask,CooldownRequired],PortalCooldown:160,Invisible:1b,Silent:1b,Small:1b,Invulnerable:1b}

scoreboard players operation @e[tag=Sanctuary,tag=!Initialized,distance=0] Level = _ Level

#演出
function makeup:skill/act/white_mage/sanctuary/act0
