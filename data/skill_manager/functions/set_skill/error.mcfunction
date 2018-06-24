##############################
###スキル設定時エラー
##############################

tellraw @s {"text":"triggerコマンドで直接操作しないで下さい。","color":"red"}
scoreboard players set $ChangeModeNo Global 1000
scoreboard players set $ChangeSupNo Global 2000
