
## 猛火斬発動

# @e[tag=Mob,nbt=!{AbsorptionAmount:1000000f}]に当てはまるのは1体のみなのでTargetタグで管理する
tag @e[tag=Mob,nbt=!{AbsorptionAmount:1000000f}] add Target

# 回数設定
scoreboard players operation _ RagingDamage = @e[tag=Target,distance=..7] RagingDamage
scoreboard players set _ _ 100
scoreboard players operation _ RagingDamage %= _ _
execute store result score _ _ if entity @e[distance=..5,tag=Mob]
# 幻影
scoreboard players operation _ _ += @e[distance=..5,tag=Mob] BlinkCount
scoreboard players operation _ RagingDamage += _ _
scoreboard players add _ RagingDamage 3
scoreboard players set _ _ 99
scoreboard players operation _ RagingDamage < _ _

execute if score _ Level matches 1 run data modify storage skill: Damage set from storage skill: Data.Knight[{Name:"猛火斬",Level:1}].Damage
execute if score _ Level matches 2 run data modify storage skill: Damage set from storage skill: Data.Knight[{Name:"猛火斬",Level:2}].Damage
execute if score _ Level matches 3 run data modify storage skill: Damage set from storage skill: Data.Knight[{Name:"猛火斬",Level:3}].Damage

# ダメージ計算
function skill:damage/add/skill/weapon

# ダメージ付与
# ダメージは100倍にして保存
execute as @e[tag=Target,distance=..7] run function skill:damage/apply/
scoreboard players set _ _ 100
execute as @e[tag=Target,distance=..7] run scoreboard players operation @s Damage *= _ _
execute as @e[tag=Target,distance=..7] run scoreboard players operation @s RagingDamage += @s Damage
scoreboard players operation @e[tag=Target,distance=..7] RagingDamage += _ RagingDamage
#ダメージ自体は別で付与するのでここでは消しておく
scoreboard players reset @e[tag=Target,distance=..7] Damage

execute as @e[tag=Target,distance=..7] run function skill:act/knight/raging_slash/initialize

# ターゲット解除
tag @e[tag=Target,distance=..7] remove Target
