##############################
### ぽむぽむ花火発動
##############################

#ダメージ
execute if score _ Level matches 1 run data modify storage skill: Damage set from storage skill: Data.Summoner[{Name:"ぽむぽむ花火",Level:1}].Damage
execute if score _ Level matches 2 run data modify storage skill: Damage set from storage skill: Data.Summoner[{Name:"ぽむぽむ花火",Level:2}].Damage
function skill:damage/add/skill/magic
data modify storage skill: UUID set from entity @s UUID
#投射物を召喚
execute anchored eyes run summon arrow ^ ^ ^0.5 {Tags:[Skill,PomPom,NativeTask,CooldownRequired,KillInGround],NoGravity:1b,damage:1,Color:16777215}

execute as @e[tag=PomPom,tag=!Initialized,distance=..3] run function skill:act/summoner/pompom/act1