#> player:tips/show.macro
$tellraw @s [{"with":[{"storage":"tusb_player:","nbt":"TIPS[$(Show)].text","interpret":true}],"translate":"[TIPS] %1$s","bold":true},{"translate":"➡このTIPSを表示しない","clickEvent":{"action":"run_command","value":"/trigger TipsSupTrigger set $(Show)"},"hoverEvent":{"action":"show_text","contents":{"translate":"非表示にしても「ポテトティップス」で見返すことができます。"}}}]
