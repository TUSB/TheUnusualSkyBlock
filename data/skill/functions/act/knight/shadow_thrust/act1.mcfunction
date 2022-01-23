
## 影封縫発動

# ダメージ計算
execute if score _ Level matches 1 run data modify storage skill: Damage set from storage skill: Data.Knight[{Name:"影封縫",Level:1}].Damage
execute if score _ Level matches 2 run data modify storage skill: Damage set from storage skill: Data.Knight[{Name:"影封縫",Level:2}].Damage
execute if score _ Level matches 3 run data modify storage skill: Damage set from storage skill: Data.Knight[{Name:"影封縫",Level:3}].Damage
function skill:damage/add/skill/weapon
#ダメージを保存
summon armor_stand ~ ~0.5 ~ {Tags:[Skill,ShadowThrust,NativeTask,CooldownRequired],PortalCooldown:40,Invisible:1b,Silent:1b,Small:1b,Invulnerable:1b}
execute positioned ~ ~0.5 ~ as @e[tag=ShadowThrust,tag=!Initialized,distance=..0.01] run function skill:damage/save
#演出
function makeup:skill/act/knight/shadow_thrust/act1
