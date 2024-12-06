#MP取得
execute store result score _ MP run data get storage skill: Skill.MP
#潜在能力 - 消費MP軽減
scoreboard players set _ _ 100
scoreboard players operation _ MP *= @s MPCostRate
scoreboard players operation _ MP /= _ _
#アイサツ補正
execute if score @s Aisatsu matches 1.. run function skill:act/ninja/aisatsu/apply
###エナジーセーブ補正
execute if score @s EnergySave matches 0.. run function skill:act/hunter/energy_save/calc
#バーストブレイク
execute if entity @a[distance=..32,scores={Burst=0..,Job=5}] run scoreboard players set _ MP 0
#MP確認
execute unless score @s MP >= _ MP run function makeup:skill/practice/error/low_mp
#麻痺確認
execute if score @s PalsyLevel matches 1.. run function effects:palsy/check
#怪しい粉補正
execute if score @s SuspiciousPowderTime matches 1.. run function skill:act/common/suspicious_powder/use_skill0

execute if score @s MP >= _ MP run function skill:practice/success
