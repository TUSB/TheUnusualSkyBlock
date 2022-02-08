##############################
### サモン：ぷちブラック 生成
##############################

#召喚 拡大中はMarker:1bで移動なし、人参棒妨害なし
summon armor_stand ^ ^ ^ {PortalCooldown:30,Tags:[Skill,PetitBlack,NativeTask,CooldownRequired],Marker:1b,Small:1b,Invisible:1b}
execute as @e[tag=PetitBlack,tag=!Initialized,distance=..0.01] store success score @s Level positioned as @s run tp @s ~ ~ ~ ~ ~

#ダメージ
execute if score _ Level matches 1 run data modify storage skill: Damage set from storage skill: Data.Summoner[{Name:"サモンぷちブラック",Level:1}].Damage
execute if score _ Level matches 2 run data modify storage skill: Damage set from storage skill: Data.Summoner[{Name:"サモンぷちブラック",Level:2}].Damage
function skill:damage/add/skill/magic
#ダメージを保存
execute as @e[tag=PetitBlack,tag=!Initialized,distance=..0.01] run function skill:damage/save
