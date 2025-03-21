#Function
# 攻撃力設定
    scoreboard players operation _ Calc = @s Level
    scoreboard players set _ _ 2
    scoreboard players operation _ Calc *= _ _
    scoreboard players set _ _ 3
    scoreboard players operation _ Calc /= _ _
    execute store result score @s Attack run scoreboard players add _ Calc 2
# 近くのプレイヤーを見る
    execute facing entity @a[predicate=entity:player,distance=..12,sort=nearest,limit=1] eyes run tp @s ^ ^ ^ ~ ~
