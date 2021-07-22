
###プレイヤーゲーム設定再表示

#各項目間にスペース1つ分の空白を開けること
#適度に改行も入れてよい
tellraw @s [{"translate":"・ステータス","bold": true,"clickEvent": {"action": "run_command","value": "/trigger ChangeSettings set 1"}}," ",{"translate":"・スキル","bold": true,"clickEvent": {"action": "run_command","value": "/trigger ChangeSkill set 1"}}," ",{"translate":"・スニークで設定を表示","bold": true,"clickEvent": {"action": "run_command","value": "/trigger ChangeSettings set 99"}}]

#> ChangeSettingsの値と設定
# 1: ステータス表示
#
# 99: スニークで設定表示切り替え
#

function makeup:player/game_settings/reshow
