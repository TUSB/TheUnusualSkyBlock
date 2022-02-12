
###プレイヤーゲーム設定

# 1 ステータス確認 (ジョブ・レベル・経験値・(スキル)・CP)
execute if score @s ChangeSettings matches 1 run function player:game_settings/show_status

# 4 パーティクル抑制
execute if score @s ChangeSettings matches 4 run function player:game_settings/tune_particle

# 5,6,7 テキスト表示位置調整
execute if score @s ChangeSettings matches 5..7 run function player:game_settings/tune_offset

# 10 職業変更
execute if score @s ChangeSettings matches 10 in area:control_area run function job:change/dialog

# 99 スニークで設定表示切り替え
execute if score @s ChangeSettings matches 99 run function player:game_settings/toggle_sneak_trigger

# 101-104 フィールサイズ
execute if score @s ChangeSettings matches 101..104 run function skill:act/summoner/fill/set_size

##トリガーリセット
scoreboard players reset @s ChangeSettings
scoreboard players enable @s ChangeSettings

##設定画面再表示
function player:game_settings/reshow
