#Function
# 警告文
    execute if score # Calc matches 60 run tellraw @s {"translate":"%1$sは気分が悪くなってしまった。","color":"dark_purple","bold":true,"with":[{"selector":"@s","color":"white"}]}
# デバフ(確定で病気になる)
    effect give @s weakness 10 9 true
    effect give @s slowness 10 1 true
    effect give @s darkness 10 0 true
    effect give @s invisibility 3 8 true
# MPが3%減少する
    scoreboard players set _ MP 3
    scoreboard players set _ _ 100
    scoreboard players operation _ MP *= @s MPMax
    scoreboard players operation _ MP /= _ _
    execute unless score @s MP > _ MP run scoreboard players set @s MP 0
    execute if score @s MP > _ MP run scoreboard players operation @s MP -= _ MP
# MPアクセラを無効化
    scoreboard players set @s MPAcceleration -600
# 免疫力が下がる
    scoreboard players remove @s ResistEffects 12
    scoreboard players operation @s ResistEffects > @s ResistMin
