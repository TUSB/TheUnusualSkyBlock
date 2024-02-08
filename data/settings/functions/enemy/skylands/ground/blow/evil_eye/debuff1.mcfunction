#Function
# 気づかない程度のデバフをつけてあげる
# 弱体化
    effect give @s weakness 10 4 true
# MPが少しだけ減少する
    scoreboard players set _ _ 100
    scoreboard players operation _ MP = @s MPMax
    scoreboard players operation _ MP /= _ _
    execute unless score @s MP > _ MP run scoreboard players set @s MP 0
    execute if score @s MP > _ MP run scoreboard players operation @s MP -= _ MP
# MPアクセラを無効化
    scoreboard players set @s MPAcceleration -600
# 免疫力が下がる
    scoreboard players remove @s ResistEffects 4
    scoreboard players operation @s ResistEffects > @s ResistMin
