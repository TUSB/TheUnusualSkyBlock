##############################
### プレイヤーゲーム設定再表示
##############################

tellraw @s ["",{"text":"・ステータス表示","bold":true,"clickEvent":{"action":"run_command","value":"/trigger ChangeSettings set 1"}}," ",{"text":"・攻略率表示","bold":true,"clickEvent":{"action":"run_command","value":"/trigger ChangeSettings set 2"}}," ",{"text":"・MP表示リセット","bold":true,"clickEvent":{"action":"run_command","value":"/trigger ChangeSettings set 3"}}," ",{"text":"・ダメージパーティクル表示切替","bold":true,"clickEvent":{"action":"run_command","value":"/trigger ChangeSettings set 4"}}]
