
### 適した位置なので設定可能

tellraw @s {"translate":"この位置をホームポイントに設定する","color":"green","bold":true,"hoverEvent":{"action":"show_text","value":{"translate":"ルーラ使用時にワープする位置。"}},"clickEvent":{"action":"run_command","value":"/trigger HomePoint set 1"}}
tellraw @s {"translate":"ホームポイントをリセットする","color":"yellow","bold":true,"hoverEvent":{"action":"show_text","value":{"translate":"ルーラ使用時のワープ位置を交易島にする。"}},"clickEvent":{"action":"run_command","value":"/trigger HomePoint set 2"}}

scoreboard players enable @s HomePoint
