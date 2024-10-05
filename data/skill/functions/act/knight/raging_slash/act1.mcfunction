
## 猛火斬発動

# 回数設定
scoreboard players operation _ RagingDamage = @s RagingDamage
scoreboard players set _ _ 100
scoreboard players operation _ RagingDamage %= _ _
execute store result score _ _ if entity @e[distance=..5,tag=Enemy]
# 幻影
execute as @e[distance=..5,tag=Enemy] run function skill:act/knight/raging_slash/get_blink
scoreboard players operation _ RagingDamage += _ _
scoreboard players add _ RagingDamage 3
scoreboard players set _ _ 99
scoreboard players operation _ RagingDamage < _ _

execute if score _ Level matches 1 run data modify storage skill: Damage set from storage skill: Data.Knight[{Name:"猛火斬",Level:1}].Damage
execute if score _ Level matches 2 run data modify storage skill: Damage set from storage skill: Data.Knight[{Name:"猛火斬",Level:2}].Damage
execute if score _ Level matches 3 run data modify storage skill: Damage set from storage skill: Data.Knight[{Name:"猛火斬",Level:3}].Damage

#計算前のダメージを保存してリセット
scoreboard players operation # Damage = @s Damage
scoreboard players reset @s Damage
# ダメージ計算
function skill:damage/add/skill/weapon
function skill:damage/apply/
# ダメージ*100+回数 として保存
scoreboard players set _ _ 100
scoreboard players operation @s Damage *= _ _
scoreboard players operation @s RagingDamage += @s Damage
scoreboard players operation @s RagingDamage += _ RagingDamage
#ダメージ自体は別で付与するので計算前のダメージに戻す
scoreboard players operation @s Damage = # Damage

scoreboard players add @s NativeFlag 100
