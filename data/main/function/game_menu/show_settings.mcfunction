#> main:game_menu/show_settings
### 詳細設定 表示

tellraw @s ["",{"translate":"・パーティクル抑制","bold":true,"clickEvent":{"action":"run_command","value":"/trigger ChangeSettings set 11"}}," ",{"translate":"・テキスト表示位置","bold":true,"clickEvent":{"action":"run_command","value":"/trigger ChangeSettings set 12"}}," ",{"text":"⇦","bold":true,"clickEvent":{"action":"run_command","value":"/trigger ChangeSettings set 13"}}," ",{"text":"⇨","bold":true,"clickEvent":{"action":"run_command","value":"/trigger ChangeSettings set 14"}}]
