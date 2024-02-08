#Function
# 初期設定
    scoreboard players set # Calc 0
    execute store result score # Calc run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Target.Debuff
    execute store result score _ Calc run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Target.OhMyDat
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Success set value 0b
# ターゲット特定
    execute on vehicle on target if entity @s[type=player] run function settings:enemy/skylands/ground/blow/evil_eye/target_debuff2
    execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI{Success:1b} run data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Target
