#> skill:enemy/delay_action/append/enemy/ryomen/
# @within function skill:enemy/delay_action/append/enemy/

# 登録 Stageがフレーム数、NextActionがtick表示間隔
    data modify storage mob_data: AddingAction set value {Stage:1,NextAction:400}
# ステータスを変化させて強化
    data modify storage mob_data: Call.Attack set value {Add:40}
    function skill:enemy/change_status/
    tag @s add RyomenRage
# 演出
    particle dust 0.45 0 0 1 ~ ~1 ~ 0.25 0.5 0.25 1 50 force @a[distance=..32,tag=ShowParticles]
    particle witch ~ ~ ~ 0.15 0 0.15 1 15 force @a[distance=..32,tag=ShowParticles]
    playsound entity.evoker.prepare_attack hostile @a[distance=..32] ~ ~ ~ 0.5 2 0
    playsound entity.blaze.death hostile @a[distance=..32] ~ ~ ~ 0.5 0 0