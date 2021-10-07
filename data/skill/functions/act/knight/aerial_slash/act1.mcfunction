
### 真空斬り発動

# ダメージ
execute if score _ Level matches 1 run data modify storage skill: Damage set from storage skill: Data.Knight[{Name:"真空斬り",Level:1}].Damage
execute if score _ Level matches 2 run data modify storage skill: Damage set from storage skill: Data.Knight[{Name:"真空斬り",Level:2}].Damage
execute if score _ Level matches 3 run data modify storage skill: Damage set from storage skill: Data.Knight[{Name:"真空斬り",Level:3}].Damage
execute if score _ Level matches 4 run data modify storage skill: Damage set from storage skill: Data.Knight[{Name:"真空斬り",Level:4}].Damage
function skill:damage/add/skill/magic

# 投てき物を召喚
execute anchored eyes run summon arrow ^ ^ ^2.5 {Tags:[Skill,AerialSlash,NativeTask,FlyingRequired,KillInGround,NoGravity,IgnoreReflection],NoGravity:1b,damage:1,Color:-1}

#ダメージを保存
execute as @e[tag=AerialSlash,tag=!Initialized,distance=..6] run function skill:damage/save
#Ownerを設定
data modify entity @e[tag=AerialSlash,tag=!Initialized,distance=..6,limit=1] Owner set from entity @s UUID

# 追尾する敵を特定
execute as @e[tag=AerialSlash,tag=!Initialized,distance=..6] facing entity @e[tag=CasterTarget,distance=..128] feet positioned 0.0 0.0 0.0 positioned ^ ^ ^2.5 run function calc:throw_projectile/
execute store result score @e[tag=CasterTarget,distance=..128] TrackingID run scoreboard players add $World TrackingID 1
scoreboard players operation @e[tag=AerialSlash,tag=!Initialized,distance=..6] TrackingID = @e[tag=CasterTarget,distance=..128] TrackingID
