
###プレイヤー設定表示

tellraw @s [{"translate":"[INFO] 確認や設定ができます。"}]
scoreboard players enable @s ChangeSettings

function player:setting/reshow
