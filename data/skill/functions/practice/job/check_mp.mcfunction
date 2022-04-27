#MP取得
execute store result score _ MP run data get storage skill: Skill.MP
#潜在能力 - 消費MP軽減
scoreboard players set _ _ 100
scoreboard players operation _ MP *= @s MPCostRate
scoreboard players operation _ MP /= _ _
#アイサツ補正
execute if score @s Aisatsu matches 1.. run function skill:act/ninja/aisatsu/apply
#MP確認
execute unless score @s MP >= _ MP run function makeup:skill/practice/error/low_mp
#麻痺確認
execute if score @s PalsyLevel matches 1.. run function effects:palsy/check

# 職業変更制限反映
execute if score @s ChangeJobLock matches ..0 if score @s MP >= _ MP run scoreboard players set @s ChangeJobLock 60

execute if score @s MP >= _ MP run function skill:practice/success
