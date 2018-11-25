##############################
### プレイヤーゲーム設定再表示
##############################

tellraw @s ["",{"text":"・ステータス","bold":true,"clickEvent":{"action":"run_command","value":"/trigger ChangeSettings set 1"}}," ",{"text":"・攻略率","bold":true,"clickEvent":{"action":"run_command","value":"/trigger ChangeSettings set 2"}}," \n",{"text":"・MP表示リセット","bold":true,"clickEvent":{"action":"run_command","value":"/trigger ChangeSettings set 3"}}," ",{"text":"・パーティクル抑制","bold":true,"clickEvent":{"action":"run_command","value":"/trigger ChangeSettings set 4"}}," \n",{"text":"・テキスト表示位置調整","bold":true,"clickEvent":{"action":"run_command","value":"/trigger ChangeSettings set 5"}}," ",{"text":"⇦","bold":true,"clickEvent":{"action":"run_command","value":"/trigger ChangeSettings set 6"}}," ",{"text":"⇨","bold":true,"clickEvent":{"action":"run_command","value":"/trigger ChangeSettings set 7"}}," ",{"text":"・スニークで設定を表示","bold":true,"clickEvent":{"action":"run_command","value":"/trigger ChangeSettings set 99"}}]

###---演出---Start
stopsound @s master minecraft:ui.button.click
execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.7 1
###---演出---End
