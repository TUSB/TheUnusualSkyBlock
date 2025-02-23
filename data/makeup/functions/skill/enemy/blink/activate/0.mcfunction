##透明化　発光
execute unless data entity @s active_effects[{id:"minecraft:invisibility"}] run data modify entity @s active_effects append value {id:"minecraft:invisibility",duration:7,amplifier:127b,show_particles:false}
execute unless data entity @s active_effects[{id:"minecraft:glowing"}] run data modify entity @s active_effects append value {id:"minecraft:glowing",duration:7,amplifier:127b,show_particles:false}

##サウンド
playsound minecraft:entity.wolf.shake hostile @a[distance=..32] ~ ~ ~ 3 2
playsound minecraft:entity.illusioner.mirror_move hostile @a[distance=..32] ~ ~ ~ 3