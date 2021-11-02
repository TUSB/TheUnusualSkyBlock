#> score_damage:core/damage_indicator
#
# 二分探索でparticleを表示する
#
# @within function score_damage:core/health_subtract

# 値は10000倍されたものなのでDamage /= 10000する
# 更に、damage_indicatorの表示はハート単位なのでDamage /= 2する
# 合わせて Damage /= 20000すれば良い
    scoreboard players operation $Damage ScoreDamageCore /= $20000 ScoreDamageCore
# Damage << 19   有効範囲に合わせるため19ビット左へシフト
    scoreboard players operation $Damage ScoreDamageCore *= $2^19 ScoreDamageCore
# Damage << 1   1ビット左へシフト
    scoreboard players operation $Damage ScoreDamageCore *= $2 ScoreDamageCore
# オーバーフローしてたらParticle表示
    execute if score $Damage ScoreDamageCore matches ..-1 run particle damage_indicator ~ ~1.2 ~ 0.5 0.5 0.5 0 2048
# 0になるまでやる
    scoreboard players operation $Damage ScoreDamageCore *= $2 ScoreDamageCore
    execute if score $Damage ScoreDamageCore matches ..-1 run particle damage_indicator ~ ~1.2 ~ 0.5 0.5 0.5 0 1024
    scoreboard players operation $Damage ScoreDamageCore *= $2 ScoreDamageCore
    execute if score $Damage ScoreDamageCore matches ..-1 run particle damage_indicator ~ ~1.2 ~ 0.5 0.5 0.5 0 512
    scoreboard players operation $Damage ScoreDamageCore *= $2 ScoreDamageCore
    execute if score $Damage ScoreDamageCore matches ..-1 run particle damage_indicator ~ ~1.2 ~ 0.5 0.5 0.5 0 256
    scoreboard players operation $Damage ScoreDamageCore *= $2 ScoreDamageCore
    execute if score $Damage ScoreDamageCore matches ..-1 run particle damage_indicator ~ ~1.2 ~ 0.5 0.5 0.5 0 128
    scoreboard players operation $Damage ScoreDamageCore *= $2 ScoreDamageCore
    execute if score $Damage ScoreDamageCore matches ..-1 run particle damage_indicator ~ ~1.2 ~ 0.5 0.5 0.5 0 64
    scoreboard players operation $Damage ScoreDamageCore *= $2 ScoreDamageCore
    execute if score $Damage ScoreDamageCore matches ..-1 run particle damage_indicator ~ ~1.2 ~ 0.5 0.5 0.5 0 32
    scoreboard players operation $Damage ScoreDamageCore *= $2 ScoreDamageCore
    execute if score $Damage ScoreDamageCore matches ..-1 run particle damage_indicator ~ ~1.2 ~ 0.5 0.5 0.5 0 16
    scoreboard players operation $Damage ScoreDamageCore *= $2 ScoreDamageCore
    execute if score $Damage ScoreDamageCore matches ..-1 run particle damage_indicator ~ ~1.2 ~ 0.5 0.5 0.5 0 8
    scoreboard players operation $Damage ScoreDamageCore *= $2 ScoreDamageCore
    execute if score $Damage ScoreDamageCore matches ..-1 run particle damage_indicator ~ ~1.2 ~ 0.5 0.5 0.5 0 4
    scoreboard players operation $Damage ScoreDamageCore *= $2 ScoreDamageCore
    execute if score $Damage ScoreDamageCore matches ..-1 run particle damage_indicator ~ ~1.2 ~ 0.5 0.5 0.5 0 2
    scoreboard players operation $Damage ScoreDamageCore *= $2 ScoreDamageCore
    execute if score $Damage ScoreDamageCore matches ..-1 run particle damage_indicator ~ ~1.2 ~ 0.5 0.5 0.5 0 1