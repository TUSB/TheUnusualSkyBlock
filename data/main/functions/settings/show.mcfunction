##############################
### プレイヤーゲーム設定表示
##############################

scoreboard players add @s TitleOffset 0
tellraw @s ["",{"text":"[INFO] 確認や設定ができます。"}]
function main:settings/reshow
