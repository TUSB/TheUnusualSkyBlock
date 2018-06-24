##############################
### 共通モードスキル変更リスト表示(ルビー)
##############################

tellraw @s [{"text":"","color":"light_purple"},{"text":"スキルを外す","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"スキルを外します。","color":"gold"}},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 99"}}," ",{"text":"ウィークペイント","hoverEvent":{"action":"show_text","value":["",{"text":"ウィークペイント","color":"gold"},[{"text":" 消費MP:","color":"yellow"},{"text":"5","bold":true}],"\n","敵の攻撃力を下げる。","\n","発動条件: ",{"text":"雪玉を投げる","color":"aqua"},"\n","効果範囲: ","なし","\n","効果時間: ","なし","\n","スキル使用不能時間: ",{"text":"0","color":"aqua"},"秒"]},"clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 8101"}}]

execute if score @s SubLevel matches 1.. run tellraw @s [{"text":"","color":"white"},{"text":"次から選ぶ","color":"yellow"}," ",{"text":"剣士","clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 1"}}," ",{"text":"忍者","clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 2"}}," ",{"text":"狩人","clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 3"}}," ",{"text":"白魔導士","clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 4"}}," ",{"text":"黒魔導士","clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 5"}}," ",{"text":"召喚士","clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 6"}}," ",{"text":"絡繰士","clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 7"}}]
execute unless score @s SubLevel matches 1.. if score @s Job matches 1 run tellraw @s [{"text":"","color":"white"},{"text":"次から選ぶ","color":"yellow"}," ",{"text":"剣士","clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 1"}}]
execute unless score @s SubLevel matches 1.. if score @s Job matches 2 run tellraw @s [{"text":"","color":"white"},{"text":"次から選ぶ","color":"yellow"}," ",{"text":"剣士","clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 2"}}]
execute unless score @s SubLevel matches 1.. if score @s Job matches 3 run tellraw @s [{"text":"","color":"white"},{"text":"次から選ぶ","color":"yellow"}," ",{"text":"剣士","clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 3"}}]
execute unless score @s SubLevel matches 1.. if score @s Job matches 4 run tellraw @s [{"text":"","color":"white"},{"text":"次から選ぶ","color":"yellow"}," ",{"text":"剣士","clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 4"}}]
execute unless score @s SubLevel matches 1.. if score @s Job matches 5 run tellraw @s [{"text":"","color":"white"},{"text":"次から選ぶ","color":"yellow"}," ",{"text":"剣士","clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 5"}}]
execute unless score @s SubLevel matches 1.. if score @s Job matches 6 run tellraw @s [{"text":"","color":"white"},{"text":"次から選ぶ","color":"yellow"}," ",{"text":"剣士","clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 6"}}]
execute unless score @s SubLevel matches 1.. if score @s Job matches 7 run tellraw @s [{"text":"","color":"white"},{"text":"次から選ぶ","color":"yellow"}," ",{"text":"剣士","clickEvent":{"action":"run_command","value":"/trigger ChangeModeRed set 7"}}]
