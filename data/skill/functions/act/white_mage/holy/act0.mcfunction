##############################
### ホーリー発動
##############################

#ダメージ
execute if score _ Level matches 1 run data modify storage skill: Damage set from storage skill: Data.WhiteMage[{Name:"ホーリー",Level:1}].Damage
execute if score _ Level matches 2 run data modify storage skill: Damage set from storage skill: Data.WhiteMage[{Name:"ホーリー",Level:2}].Damage
function skill:damage/add/skill/magic
#投射物を召喚
execute anchored eyes run summon arrow ^ ^ ^0.5 {Tags:[Skill,Holy,NativeTask,FlyingRequired,KillInGround,IgnoreReflection],damage:1,Color:16646019}
execute as @e[tag=Holy,tag=!Initialized,distance=..3] positioned 0.0 0.0 0.0 positioned ^ ^ ^1.55 run function calc:throw_projectile/
#ダメージを保存
execute as @e[tag=Holy,tag=!Initialized,distance=..3] run function skill:damage/save
#Ownerを設定
data modify entity @e[tag=Holy,tag=!Initialized,distance=..3,limit=1] Owner set from entity @s UUID
#演出
function makeup:skill/act/white_mage/holy/act0
