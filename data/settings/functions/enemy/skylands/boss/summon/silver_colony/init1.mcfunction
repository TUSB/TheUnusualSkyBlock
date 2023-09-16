#Function
# 周囲に同じモブがいるかどうかを確認
    execute unless entity @e[distance=..64,tag=Colony] run function settings:enemy/skylands/boss/summon/silver_colony/init2
    execute if entity @e[distance=..64,tag=Colony] run function settings:enemy/skylands/boss/summon/silver_colony/init3
