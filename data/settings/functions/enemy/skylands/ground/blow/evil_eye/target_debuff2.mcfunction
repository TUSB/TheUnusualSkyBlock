#Function
# 情報整理
# Target対象の変更がなければDebuffを上昇させて効果を強力なものにする
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Target.OhMyDat int 1 run scoreboard players get @s OhMyDatID
    execute if score _ Calc = @s OhMyDatID run scoreboard players add # Calc 1
    execute unless score _ Calc = @s OhMyDatID run scoreboard players set # Calc 0
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Target.Debuff int 1 run scoreboard players get # Calc
# デバフの種類分岐
# 10秒未満
    execute if score # Calc matches ..19 run function settings:enemy/skylands/ground/blow/evil_eye/debuff1
# 10秒以上30秒未満
    execute if score # Calc matches 20..59 run function settings:enemy/skylands/ground/blow/evil_eye/debuff2
# 30秒以上60秒未満
    execute if score # Calc matches 60..119 run function settings:enemy/skylands/ground/blow/evil_eye/debuff3
# 60秒以上120秒未満
    execute if score # Calc matches 120..239 run function settings:enemy/skylands/ground/blow/evil_eye/debuff4
# 120秒以上のものには死を
    execute if score # Calc matches 240.. run function settings:enemy/skylands/ground/blow/evil_eye/debuff5
# 成功フラグ
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Success set value 1b
