#Function
# 判定
# MPの値によって判定角度を変更
    execute if score @s MP matches 1 run function settings:enemy/global/friendly/shoot/spark_pixely/slash_1
    execute if score @s MP matches 2 run function settings:enemy/global/friendly/shoot/spark_pixely/slash_2
    execute if score @s MP matches 3 run function settings:enemy/global/friendly/shoot/spark_pixely/slash_3
    execute if score @s MP matches 4 run function settings:enemy/global/friendly/shoot/spark_pixely/slash_4
    execute if score @s MP matches 5 run function settings:enemy/global/friendly/shoot/spark_pixely/slash_5
# ダメージ適用
    scoreboard players operation * OhMyDatID -= @s ParentID
    data modify storage skill: Damage set value {Physical:0,Fire:0,Ice:0,Lightning:0,Light:0,Dark:0,Hit:1b}
    scoreboard players operation _ Level = @s Level
    scoreboard players operation _ ElementLightning = @e[distance=..48,scores={OhMyDatID=0},sort=nearest,limit=1] ElementLightning
    scoreboard players add _ ElementLightning 100
    execute store result storage skill: Damage.Lightning int 0.015 run scoreboard players operation _ Level *= _ ElementLightning
    scoreboard players operation _ Level = @s Level
    scoreboard players operation _ ElementLight = @e[distance=..48,scores={OhMyDatID=0},sort=nearest,limit=1] ElementLight
    scoreboard players add _ ElementLight 100
    execute store result storage skill: Damage.Light int 0.01 run scoreboard players operation _ Level *= _ ElementLight
    scoreboard players operation * OhMyDatID += @s ParentID
    function skill:damage/add/skill/normal
    execute as @e[distance=..5,tag=Enemy,tag=NowTarget] run function skill:damage/apply/
# 本体が狙われるように
    scoreboard players operation * OhMyDatID -= @s ParentID
    execute as @e[distance=..5,tag=Enemy,tag=NowTarget] run damage @s 0.001 mob_attack by @e[distance=..48,scores={OhMyDatID=0},sort=nearest,limit=1]
    scoreboard players operation * OhMyDatID += @s ParentID
    execute at @e[distance=..5,tag=Enemy,tag=NowTarget] run playsound item.trident.throw hostile @a[distance=..16] ~ ~ ~ 0.75 1.3 0
    execute at @e[distance=..5,tag=Enemy,tag=NowTarget] run playsound block.bubble_column.upwards_inside hostile @a[distance=..16] ~ ~ ~ 1 2 0
# タグ外し
    tag @e[distance=..5,tag=Enemy,tag=NowTarget] remove NowTarget
