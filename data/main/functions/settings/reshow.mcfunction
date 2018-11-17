##############################
### プレイヤーゲーム設定再表示
##############################

tellraw @s ["",{"text":"・ステータス","bold":true,"clickEvent":{"action":"run_command","value":"/trigger ChangeSettings set 1"}}," ",{"text":"・攻略率","bold":true,"clickEvent":{"action":"run_command","value":"/trigger ChangeSettings set 2"}}," \n",{"text":"・MP表示リセット","bold":true,"clickEvent":{"action":"run_command","value":"/trigger ChangeSettings set 3"}}," ",{"text":"・ダメージパーティクル表示切替","bold":true,"clickEvent":{"action":"run_command","value":"/trigger ChangeSettings set 4"}}," \n",{"text":"・テキスト表示位置調整","bold":true,"clickEvent":{"action":"run_command","value":"/trigger ChangeSettings set 5"}}," ",{"text":"⇦","bold":true,"clickEvent":{"action":"run_command","value":"/trigger ChangeSettings set 6"}}," ",{"text":"⇨","bold":true,"clickEvent":{"action":"run_command","value":"/trigger ChangeSettings set 7"}}]
