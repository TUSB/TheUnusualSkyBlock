##############################
### 金タライ発動
##############################

#タライ召喚
execute as @e[distance=..15,tag=Enemy] at @s anchored eyes positioned ^ ^ ^ run summon armor_stand ~ ~2 ~ {PortalCooldown:80,Silent:true,Invulnerable:true,ShowArms:false,Invisible:true,NoBasePlate:true,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:150,Explosion:{Type:0b,Colors:[I;16767791]}}}],Tags:[Skill,KanaTarai,NativeTask,CooldownRequired]}
#ダメージ
execute if score _ Level matches 1 run data modify storage skill: Damage set from storage skill: Data.Summoner[{Name:"金タライ",Level:1}].Damage
execute if score _ Level matches 2 run data modify storage skill: Damage set from storage skill: Data.Summoner[{Name:"金タライ",Level:2}].Damage
function skill:damage/add/skill/magic
#ダメージを保存
execute as @e[tag=KanaTarai,tag=!Initialized] run function skill:damage/save
#演出
function makeup:skill/act/summoner/kana_tarai/act0
