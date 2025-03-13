#>skill:act/knight/raging_slash/act0
## 猛火斬発動

# スキルダメージを取得
execute if score _ Level matches 1 run data modify storage skill: damage set from storage skill: Data.Knight[{Name:"猛火斬",Level:1}].Damage
execute if score _ Level matches 2 run data modify storage skill: damage set from storage skill: Data.Knight[{Name:"猛火斬",Level:2}].Damage
execute if score _ Level matches 3 run data modify storage skill: damage set from storage skill: Data.Knight[{Name:"猛火斬",Level:3}].Damage

# マーカーを召喚してダメージをセーブ
summon minecraft:marker ~ ~ ~ {Tags:[Skill,RagingSlash]}
scoreboard players set @n[tag=RagingSlash] NativeFlag 100
execute as @n[tag=RagingSlash] run function skill:damage/save

# ターゲットで実行
execute at 0-0-0-0-2 as @e[tag=Enemy,nbt=!{AbsorptionAmount:1000000f}] run function skill:act/knight/raging_slash/act1
