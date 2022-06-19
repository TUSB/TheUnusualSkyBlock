
###プレイヤーゲーム設定再表示

#各項目間にスペース1つ分の空白を開けること
#適度に改行も入れてよい
#tellraw @s ["",{"translate":"・ステータス","bold": true,"clickEvent": {"action": "run_command","value": "/trigger ChangeSettings set 1"}}," ",{"translate":"・スキル","bold": true,"clickEvent": {"action": "run_command","value": "/trigger ChangeSkill set 1"}}," ",{"translate":"・パーティクル抑制","bold":true,"clickEvent":{"action":"run_command","value":"/trigger ChangeSettings set 4"}}," ",{"translate":"・テキスト表示位置","bold":true,"clickEvent":{"action":"run_command","value":"/trigger ChangeSettings set 5"}}," ",{"text":"⇦","bold":true,"clickEvent":{"action":"run_command","value":"/trigger ChangeSettings set 6"}}," ",{"text":"⇨","bold":true,"clickEvent":{"action":"run_command","value":"/trigger ChangeSettings set 7"}}," ",{"translate":"・職業変更","bold":true,"clickEvent":{"action":"run_command","value":"/trigger ChangeSettings set 10"}}," ",{"translate":"・スニークで設定を表示","bold": true,"clickEvent": {"action": "run_command","value": "/trigger ChangeSettings set 99"}}]
tellraw @s ["",{"translate":"・ステータス","bold":true,"clickEvent": {"action": "run_command","value": "/trigger ChangeSettings set 1"}}," ",{"translate":"・スキル","bold":true,"clickEvent": {"action": "run_command","value": "/trigger ChangeSkill set 1"}}," ",{"translate":"・職業変更","bold":true,"clickEvent":{"action":"run_command","value":"/trigger ChangeSettings set 2"}}," ",{"translate":"・詳細設定","bold":true,"clickEvent":{"action":"run_command","value":"/trigger ChangeSettings set 10"}}]

#フィールサイズ設定
execute if data entity @s Inventory[{tag:{Skill:{Name:"フィール"}}}] in area:control_area run function skill:act/summoner/fill/show_size

#> ChangeSettingsの値と設定
#  1: ステータス表示
#   : スキル
#  2: 職業変更
# 10: 詳細設定
#
# 11: パーティクル抑制
# 12: テキスト現在位置表示
# 13: テキスト表示位置を左にずらす
# 14: テキスト表示位置を右にずらす
# 15: スニークで設定表示切り替え
#
# 101-104: フィールサイズ

function makeup:player/game_settings/reshow
