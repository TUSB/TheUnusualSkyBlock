#Function
# 警告文
    execute if score # Calc matches 20 run tellraw @s {"translate":"誰かに見られている気がする……。","color":"dark_purple","bold":true}
# デバフ(低確率で病気になる)
    effect give @s weakness 10 6 true
    effect give @s slowness 10 0 true
    execute store result score _ Random run function calc:random
    scoreboard players set _ _ 100
    scoreboard players operation _ Random %= _ _
    execute if score _ Random matches ..5 run effect give @s invisibility 3 8 true
# MPが少しだけ減少する
    scoreboard players set _ MP 2
    scoreboard players set _ _ 100
    scoreboard players operation _ MP *= @s MPMax
    scoreboard players operation _ MP /= _ _
    execute unless score @s MP > _ MP run scoreboard players set @s MP 0
    execute if score @s MP > _ MP run scoreboard players operation @s MP -= _ MP
# MPアクセラを無効化
    scoreboard players set @s MPAcceleration -600
# 免疫力が下がる
    scoreboard players remove @s ResistEffects 8
    scoreboard players operation @s ResistEffects > @s ResistMin
