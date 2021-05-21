
###プレイヤーゲーム設定

# 1 ステータス確認 (ジョブ・レベル・経験値・(スキル)・CP)
execute if score @s ChangeSettings matches 1 run function player:game_settings/show_status




# 99 スニークで設定表示切り替え
execute if score @s ChangeSettings matches 99 run function player:game_settings/toggle_sneak_trigger

##トリガーリセット
scoreboard players reset @s ChangeSettings
scoreboard players enable @s ChangeSettings

##設定画面再表示
function player:game_settings/reshow
