
### 一閃発動

#既に一閃があれば消す
scoreboard players operation _ OhMyDatID = @s OhMyDatID
execute as @e[tag=Issen,distance=..3] if score @s OhMyDatID = _ OhMyDatID run kill @s

#新たに一閃を発生させる
summon minecraft:villager ~ ~500 ~ {NoGravity:true,PortalCooldown:30,Tags:[Skill,Issen,CooldownRequired],Team:NoCollision,Silent:true,active_effects:[{id:"minecraft:invisibility",amplifier:127b,duration:-1,show_particles:false}],Offers:{Recipes:[]}}
execute positioned ~ ~500 ~ run tp @e[tag=!Initialized,tag=Issen,distance=..0.01,limit=1] ~ ~-500 ~
scoreboard players operation @e[tag=!Initialized,tag=Issen,distance=..0.01,limit=1] OhMyDatID = @s OhMyDatID

#一閃速度設定
execute if score _ Level matches 1 as @e[tag=!Initialized,tag=Issen,distance=..0.01,limit=1] positioned 0.0 0.0 0.0 positioned ^ ^ ^1.08 run function calc:throw_projectile/
execute if score _ Level matches 2 as @e[tag=!Initialized,tag=Issen,distance=..0.01,limit=1] positioned 0.0 0.0 0.0 positioned ^ ^ ^1.39 run function calc:throw_projectile/
execute if score _ Level matches 3 as @e[tag=!Initialized,tag=Issen,distance=..0.01,limit=1] positioned 0.0 0.0 0.0 positioned ^ ^ ^1.70 run function calc:throw_projectile/
execute if score _ Level matches 4 as @e[tag=!Initialized,tag=Issen,distance=..0.01,limit=1] positioned 0.0 0.0 0.0 positioned ^ ^ ^2.01 run function calc:throw_projectile/

#ダメージ
execute if score _ Level matches 1 run data modify storage skill: Damage set from storage skill: Data.Ninja[{Name:"一閃",Level:1}].Damage
execute if score _ Level matches 2 run data modify storage skill: Damage set from storage skill: Data.Ninja[{Name:"一閃",Level:2}].Damage
execute if score _ Level matches 3 run data modify storage skill: Damage set from storage skill: Data.Ninja[{Name:"一閃",Level:3}].Damage
execute if score _ Level matches 4 run data modify storage skill: Damage set from storage skill: Data.Ninja[{Name:"一閃",Level:4}].Damage
function skill:damage/add/skill/magic
execute as @e[tag=!Initialized,tag=Issen,distance=..0.01,limit=1] run function skill:damage/save

#一閃tick数設定
scoreboard players set @s Issen 30

#ラグ削減&位置固定
effect give @s minecraft:slow_falling 2 0 true
