
###プレイヤー設定表示

scoreboard players add @s TitleOffset 0
tellraw @s [{"translate":"[INFO] 確認や設定ができます。"}]
scoreboard players enable @s ChangeSettings

function player:game_settings/reshow
