#MP取得
execute store result score _ MP run data get storage skill: Skill.MP
#アイサツ補正
execute if score @s Aisatsu matches 1.. run function skill:act/ninja/aisatsu/apply
#MP確認
execute unless score @s MP >= _ MP run function makeup:skill/practice/error/low_mp
#麻痺確認
execute if score @s PalsyLevel matches 1.. run function effects:palsy/check
execute if score @s MP >= _ MP run function skill:practice/success
