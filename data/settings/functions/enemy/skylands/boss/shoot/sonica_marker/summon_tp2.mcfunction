#Function
# TP
    execute at @e[distance=..18,tag=SonicAAI] facing entity @a[predicate=entity:player] eyes run tp @e[distance=..0.01,type=item_display] ~ ~-16.35 ~ ~ 0
# 音
    playsound entity.wither.spawn hostile @a ~ ~ ~ 1.25 0.8
    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 1 2
    playsound entity.warden.sonic_boom hostile @a ~ ~ ~ 1 1.25

# 演出
# 円
    particle end_rod ~-0.0 ~0.1 ~1.0 ~-12.107 ~0.1 ~1000000000.0 0.00000000050 0 force @a[distance=..32]
    particle end_rod ~0.195 ~0.1 ~0.981 ~195090336.0 ~0.1 ~980785280.0 0.00000000050 0 force @a[distance=..32]
    particle end_rod ~0.383 ~0.1 ~0.924 ~382683488.0 ~0.1 ~923879552.0 0.00000000050 0 force @a[distance=..32]
    particle end_rod ~0.556 ~0.1 ~0.831 ~555570240.0 ~0.1 ~831469632.0 0.00000000050 0 force @a[distance=..32]
    particle end_rod ~0.707 ~0.1 ~0.707 ~707106752.0 ~0.1 ~707106752.0 0.00000000050 0 force @a[distance=..32]
    particle end_rod ~0.831 ~0.1 ~0.556 ~831469632.0 ~0.1 ~555570240.0 0.00000000050 0 force @a[distance=..32]
    particle end_rod ~0.924 ~0.1 ~0.383 ~923879552.0 ~0.1 ~382683488.0 0.00000000050 0 force @a[distance=..32]
    particle end_rod ~0.981 ~0.1 ~0.195 ~980785280.0 ~0.1 ~195090336.0 0.00000000050 0 force @a[distance=..32]
    particle end_rod ~1.0 ~0.1 ~0.0 ~1000000000.0 ~0.1 ~-14.901 0.00000000050 0 force @a[distance=..32]
    particle end_rod ~0.981 ~0.1 ~-0.195 ~980785280.0 ~0.1 ~-195090368.0 0.00000000050 0 force @a[distance=..32]
    particle end_rod ~0.924 ~0.1 ~-0.383 ~923879552.0 ~0.1 ~-382683488.0 0.00000000050 0 force @a[distance=..32]
    particle end_rod ~0.831 ~0.1 ~-0.556 ~831469632.0 ~0.1 ~-555570240.0 0.00000000050 0 force @a[distance=..32]
    particle end_rod ~0.707 ~0.1 ~-0.707 ~707106752.0 ~0.1 ~-707106752.0 0.00000000050 0 force @a[distance=..32]
    particle end_rod ~0.556 ~0.1 ~-0.831 ~555570240.0 ~0.1 ~-831469632.0 0.00000000050 0 force @a[distance=..32]
    particle end_rod ~0.383 ~0.1 ~-0.924 ~382683488.0 ~0.1 ~-923879552.0 0.00000000050 0 force @a[distance=..32]
    particle end_rod ~0.195 ~0.1 ~-0.981 ~195090336.0 ~0.1 ~-980785280.0 0.00000000050 0 force @a[distance=..32]
    particle end_rod ~-0.0 ~0.1 ~-1.0 ~-12.107 ~0.1 ~-1000000000.0 0.00000000050 0 force @a[distance=..32]
    particle end_rod ~-0.195 ~0.1 ~-0.981 ~-195090368.0 ~0.1 ~-980785280.0 0.00000000050 0 force @a[distance=..32]
    particle end_rod ~-0.383 ~0.1 ~-0.924 ~-382683488.0 ~0.1 ~-923879552.0 0.00000000050 0 force @a[distance=..32]
    particle end_rod ~-0.556 ~0.1 ~-0.831 ~-555570240.0 ~0.1 ~-831469632.0 0.00000000050 0 force @a[distance=..32]
    particle end_rod ~-0.707 ~0.1 ~-0.707 ~-707106752.0 ~0.1 ~-707106752.0 0.00000000050 0 force @a[distance=..32]
    particle end_rod ~-0.831 ~0.1 ~-0.556 ~-831469632.0 ~0.1 ~-555570240.0 0.00000000050 0 force @a[distance=..32]
    particle end_rod ~-0.924 ~0.1 ~-0.383 ~-923879552.0 ~0.1 ~-382683488.0 0.00000000050 0 force @a[distance=..32]
    particle end_rod ~-0.981 ~0.1 ~-0.195 ~-980785280.0 ~0.1 ~-195090368.0 0.00000000050 0 force @a[distance=..32]
    particle end_rod ~-1.0 ~0.1 ~0.0 ~-1000000000.0 ~0.1 ~-14.901 0.00000000050 0 force @a[distance=..32]
    particle end_rod ~-0.981 ~0.1 ~0.195 ~-980785280.0 ~0.1 ~195090336.0 0.00000000050 0 force @a[distance=..32]
    particle end_rod ~-0.924 ~0.1 ~0.383 ~-923879552.0 ~0.1 ~382683488.0 0.00000000050 0 force @a[distance=..32]
    particle end_rod ~-0.831 ~0.1 ~0.556 ~-831469632.0 ~0.1 ~555570240.0 0.00000000050 0 force @a[distance=..32]
    particle end_rod ~-0.707 ~0.1 ~0.707 ~-707106752.0 ~0.1 ~707106752.0 0.00000000050 0 force @a[distance=..32]
    particle end_rod ~-0.556 ~0.1 ~0.831 ~-555570240.0 ~0.1 ~831469632.0 0.00000000050 0 force @a[distance=..32]
    particle end_rod ~-0.383 ~0.1 ~0.924 ~-382683488.0 ~0.1 ~923879552.0 0.00000000050 0 force @a[distance=..32]
    particle end_rod ~-0.195 ~0.1 ~0.981 ~-195090368.0 ~0.1 ~980785280.0 0.00000000050 0 force @a[distance=..32]
# 雷
    particle dust 0 -1 -1 1.2 ~ ~2 ~ 1 3 1 0 150 force @a[distance=..32,tag=ShowParticles]
    particle dust 0 -1 -1 1.2 ~ ~4 ~ 0.25 6 0.25 0 150 force @a[distance=..32,tag=ShowParticles]
    particle large_smoke ~ ~ ~ 0 0 0 0.25 30 force @a[distance=..32,tag=ShowParticles]
# ダメージ判定
    data modify storage mob_data: MobName set value '[{"translate":"t","color":"#440066","obfuscated":true},{"translate":"u","color":"#53007D","obfuscated":true},{"translate":"s","color":"#68009C","obfuscated":true},{"translate":"b","color":"#8300C4","obfuscated":true},{"translate":"《音速の堕天使》SonicA","color":"#AA00FF","bold":true,"obfuscated":false},{"translate":"b","color":"#8300C4","obfuscated":true},{"translate":"s","color":"#68009C","obfuscated":true},{"translate":"u","color":"#53007D","obfuscated":true},{"translate":"t","color":"#440066","obfuscated":true}]'
    data remove storage score_damage: Argument
    data modify storage score_damage: Argument set value {BypassArmor:1b,BypassResistance:1b,DamageType:[Global],EPF:0,DeathCause:'[{"translate":"%1$sは%2$sの放った衝撃波に全身を粉砕されてしまった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'}
    execute store result storage score_damage: Argument.Damage int 2 run scoreboard players get @s Attack
#    execute as @e[distance=..6,predicate=entity:friendly] run function skill:enemy/laser/main/damage
