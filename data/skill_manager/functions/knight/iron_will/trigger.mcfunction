##############################
### アイアンウィル
##############################

###アイアンウィル時function呼び出し
execute as @a[scores={IronWill=1..}] run function skill_manager:knight/iron_will/save

###スコア計算
scoreboard players set $Tmp Global 50
scoreboard players operation $Tmp Global -= @s Armor
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield"}]}] run scoreboard players remove $Tmp Global 10
scoreboard players operation @s[scores={IronWill=1..}] IronWill -= $Tmp Global

###効果切れメッセージ
tellraw @s[scores={IronWill=..0}] {"text":"アイアンウィルの効果が切れた","color":"yellow"}
scoreboard players reset @s[scores={IronWill=..0}] IronWill

###進捗トリガーリセット
advancement revoke @s only skill_manager:iron_will
