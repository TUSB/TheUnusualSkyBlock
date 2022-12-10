
### 真空斬り発動

# ダメージ
execute if score _ Level matches 1 run data modify storage skill: Damage set from storage skill: Data.Knight[{Name:"真空斬り",Level:1}].Damage
execute if score _ Level matches 2 run data modify storage skill: Damage set from storage skill: Data.Knight[{Name:"真空斬り",Level:2}].Damage
execute if score _ Level matches 3 run data modify storage skill: Damage set from storage skill: Data.Knight[{Name:"真空斬り",Level:3}].Damage
execute if score _ Level matches 4 run data modify storage skill: Damage set from storage skill: Data.Knight[{Name:"真空斬り",Level:4}].Damage
function skill:damage/add/skill/weapon

# 投てき物を召喚
summon arrow ^ ^ ^ {Tags:[Skill,AerialSlash,NativeTask,FlyingRequired,KillInGround,IgnoreReflection],NoGravity:1b,damage:1,Color:-1}

#ダメージを保存
execute as @e[tag=AerialSlash,tag=!Initialized,distance=..0.01] run function skill:damage/save
#Ownerを設定
data modify entity @e[tag=AerialSlash,tag=!Initialized,distance=..0.01,limit=1] Owner set from entity @s UUID

# 追尾する敵を特定
execute store result score @e[tag=AerialSlash,tag=!Initialized,distance=..0.01] TrackingID at 0-0-0-0-0 store result score @e[tag=Mob,distance=..0.01,sort=nearest,limit=1] TrackingID run scoreboard players add $World TrackingID 1
execute as @e[tag=AerialSlash,tag=!Initialized,distance=..0.01] facing entity 0-0-0-0-0 feet positioned 0.0 0.0 0.0 positioned ^ ^ ^2.5 run function calc:throw_projectile/
