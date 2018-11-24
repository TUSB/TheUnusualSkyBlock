##############################
### バースト発動
##############################

scoreboard players operation $AuraLife Global = バースト MP
scoreboard players operation $AuraLife Global %= $10000 Const
### 攻撃上系短め・バフ系普通・デバフ系長め
### 剣士６秒＊１０
execute if score @s Job matches 1 run scoreboard players operation $AuraLife Global *= $600 Const
### 忍者８秒＊１０
execute if score @s Job matches 1 run scoreboard players operation $AuraLife Global *= $800 Const
### 狩人４秒＊１０
execute if score @s Job matches 1 run scoreboard players operation $AuraLife Global *= $400 Const
### 白魔６秒＊１０
execute if score @s Job matches 1 run scoreboard players operation $AuraLife Global *= $600 Const
### 黒魔４秒＊１０
execute if score @s Job matches 1 run scoreboard players operation $AuraLife Global *= $400 Const
### 召喚６秒＊１０
execute if score @s Job matches 1 run scoreboard players operation $AuraLife Global *= $600 Const
### 絡繰４秒＊１０
execute if score @s Job matches 1 run scoreboard players operation $AuraLife Global *= $400 Const

scoreboard players operation @s Aura > $AuraLife Global

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
