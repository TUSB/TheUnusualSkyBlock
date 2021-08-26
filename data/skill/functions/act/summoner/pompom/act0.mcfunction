##############################
### ぽむぽむ花火発動
##############################

#ダメージ
execute if score _ Level matches 1 run data modify storage skill: Damage set from storage skill: Data.Summoner[{Name:"ぽむぽむ花火",Level:1}].Damage
execute if score _ Level matches 2 run data modify storage skill: Damage set from storage skill: Data.Summoner[{Name:"ぽむぽむ花火",Level:2}].Damage
function skill:damage/add/skill/magic

#雪玉を召喚
execute anchored eyes run summon arrow ^ ^ ^0.5 {Tags:[Skill,PomPom,NativeTask,CooldownRequired,NoGravity],PortalCooldown:7,NoGravity:1b,damage:0}
execute as @e[tag=PomPom,tag=!Initialized,distance=..3] positioned 0.0 0.0 0.0 positioned ^ ^ ^2.5 run function calc:throw_projectile/

#ダメージと装備を保存
execute as @e[tag=PomPom,tag=!Initialized,distance=..3] run function skill:damage/save

#Ownerを設定
data modify entity @e[tag=PomPom,tag=!Initialized,distance=..3,limit=1] Owner set from entity @s UUID

#演出
function makeup:skill/act/summoner/pompom/act0
