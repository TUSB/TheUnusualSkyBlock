##透明化　発光
execute unless data entity @s ActiveEffects[{Id:14b}] run data modify entity @s ActiveEffects append value {Id:14b,Duration:7,Amplifier:127b,ShowParticles:false}
execute unless data entity @s ActiveEffects[{Id:24b}] run data modify entity @s ActiveEffects append value {Id:24b,Duration:7,Amplifier:127b,ShowParticles:false}

##サウンド
playsound minecraft:entity.wolf.shake hostile @a[distance=..32] ~ ~ ~ 3 2
playsound minecraft:entity.illusioner.mirror_move hostile @a[distance=..32] ~ ~ ~ 3