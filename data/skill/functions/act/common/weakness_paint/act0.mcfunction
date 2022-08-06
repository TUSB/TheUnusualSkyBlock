
### ウィークペイント


#ダメージ
execute if score _ Level matches 1 run data modify storage skill: Damage set from storage skill: Data.Common[{Name:"ウィークペイント",Level:1}].Damage
execute if score _ Level matches 2 run data modify storage skill: Damage set from storage skill: Data.Common[{Name:"ウィークペイント",Level:2}].Damage
function skill:damage/add/skill/magic
#投射物を召喚
execute anchored eyes run summon arrow ^ ^ ^0.5 {Tags:[Skill,WeakPaint,NativeTask,FlyingRequired,KillInGround],NoGravity:1b,damage:1,Color:3752270,SoundEvent:"minecraft:block.beacon.deactivate"}
execute as @e[tag=WeakPaint,tag=!Initialized,distance=..3] positioned 0.0 0.0 0.0 positioned ^ ^ ^1.8 run function calc:throw_projectile/
#ダメージを保存
execute as @e[tag=WeakPaint,tag=!Initialized,distance=..3] run function skill:damage/save
#Ownerを設定
data modify entity @e[tag=WeakPaint,tag=!Initialized,distance=..3,limit=1] Owner set from entity @s UUID
#レベルを保存
scoreboard players operation @e[tag=WeakPaint,tag=!Initialized,distance=..3] Weakness = _ Level
#演出
function makeup:skill/act/common/weakness_paint/act0
