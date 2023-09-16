#Function
# 警告文
    execute if score # Calc matches 120 run tellraw @s {"translate":"鬱な感情が%1$sをおおいつくす。","color":"dark_purple","bold":true,"with":[{"selector":"@s","color":"white"}]}
# デバフ(低確率で病気になる)
# 低確率で死の宣告
    effect give @s weakness 10 14 true
    effect give @s slowness 10 2 true
    effect give @s darkness 10 0 true
    effect give @s blindness 10 0 true
    execute store result score _ Random run function calc:random
    scoreboard players set _ _ 100
    scoreboard players operation _ Random %= _ _
    execute if score _ Random matches ..1 run effect give @s invisibility 10 1 true
    execute if score _ Random matches ..1 run playsound entity.wither.spawn hostile @s ~ ~ ~ 0.5 1.75
    effect give @s invisibility 3 8 true
# MPが少しだけ減少する
    scoreboard players set _ MP 5
    scoreboard players set _ _ 100
    scoreboard players operation _ MP *= @s MPMax
    scoreboard players operation _ MP /= _ _
    execute unless score @s MP > _ MP run scoreboard players set @s MP 0
    execute if score @s MP > _ MP run scoreboard players operation @s MP -= _ MP
# MPアクセラを無効化
    scoreboard players set @s MPAcceleration -600
# 免疫力が下がる
    scoreboard players remove @s ResistEffects 17
    scoreboard players operation @s ResistEffects > @s ResistMin
