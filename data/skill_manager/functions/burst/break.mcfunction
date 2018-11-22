##############################
### バースト発動
##############################

scoreboard players reset バースト MP
execute as @a run function effect_manager:reload
tellraw @a {"text":"バーストブレイク！！","color":"gold","italic":true,"bold":true}
execute if score @s Job matches 1 run tellraw @a [{"selector":"@s"},{"text":"は剣士のオーラを纏った！！！","color":"green"}]
execute if score @s Job matches 2 run tellraw @a [{"selector":"@s"},{"text":"は忍者のオーラを纏った！！！","color":"green"}]
execute if score @s Job matches 3 run tellraw @a [{"selector":"@s"},{"text":"は狩人のオーラを纏った！！！","color":"green"}]
execute if score @s Job matches 4 run tellraw @a [{"selector":"@s"},{"text":"は白魔導士のオーラを纏った！！！","color":"green"}]
execute if score @s Job matches 5 run tellraw @a [{"selector":"@s"},{"text":"は黒魔導士のオーラを纏った！！！","color":"green"}]
execute if score @s Job matches 6 run tellraw @a [{"selector":"@s"},{"text":"は召喚士のオーラを纏った！！！","color":"green"}]
execute if score @s Job matches 7 run tellraw @a [{"selector":"@s"},{"text":"は絡繰士のオーラを纏った！！！","color":"green"}]

###---演出---Start
playsound minecraft:entity.illusioner.cast_spell master @a ~ ~ ~ 6 0.5
###---演出---End

function skill_manager:burst/reset
