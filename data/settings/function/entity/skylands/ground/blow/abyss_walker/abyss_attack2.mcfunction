#Function
# 対象にダメージを与える
    data remove storage score_damage: Argument
    data modify storage score_damage: Argument set value {DamageType:[Global],DeathCause:'[{"translate":"%1$sは地面に広がる深淵に飲み込まれてしまった。","with":[{"selector":"@s"}]}]'}
    execute store result storage score_damage: Argument.Damage int 1 run data get storage mob_data: Call.Damage
    function skill:enemy/laser/main/damage
# 音
    playsound entity.evoker.prepare_attack hostile @s ~ ~ ~ 1.0 0.75 0.0
# ランダムで呪詛
    execute store result score _ Random run function calc:random
    scoreboard players set _ _ 8
    scoreboard players operation _ Random %= _ _
    execute if score _ Random matches 0 run effect give @s invisibility 10 7 true
# 確定で超デバフ
    effect give @s slowness 30 2
    effect give @s wither 30 2
    effect give @s blindness 30 0
