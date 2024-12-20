##############################
### フォトニックレーザー発動
##############################

#召喚
execute positioned ^ ^ ^18 run summon armor_stand ~ ~ ~ {Tags:[Skill,PhotonicLaser,NativeTask,CooldownRequired],PortalCooldown:100,Marker:1b,Small:1b,Invisible:1b}
execute positioned ^ ^ ^18 as @e[tag=PhotonicLaser,tag=!Initialized,distance=..0.01] run tp @s ~ ~ ~ ~ ~

#ダメージ
execute if score _ Level matches 1 run data modify storage skill: Damage set from storage skill: Data.Hunter[{Name:"フォトニックレーザー",Level:1}].Damage
execute if score _ Level matches 2 run data modify storage skill: Damage set from storage skill: Data.Hunter[{Name:"フォトニックレーザー",Level:2}].Damage
function skill:damage/add/skill/weapon
#ダメージを保存
execute positioned ^ ^ ^18 as @e[tag=PhotonicLaser,tag=!Initialized,distance=..0.01] run function skill:damage/save
