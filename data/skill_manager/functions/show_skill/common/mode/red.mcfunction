##############################
### 共通モードスキル名表示(ルビー)
##############################

###モード１
tellraw @s[scores={ShowSkillNo=81011}] ["",{"text":"・ウィークペイント","color":"light_purple"},"   ",{"text":"→変更！","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 9"}}]
###モード２
tellraw @s[scores={ShowSkillNo=81021}] ["",{"text":"・ライブラ","color":"light_purple"},"   ",{"text":"→変更！","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 9"}}]
