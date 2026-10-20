#> skill:act/black_mage/wind_wall/finish

# ウィンドウォール終了処理

scoreboard players reset @s WindWall
attribute @s minecraft:knockback_resistance modifier remove minecraft:00000000-0020-0000-0000-000000000000
tellraw @s {"translate":"%1$sの%2$sの効果が切れた。","color":"yellow","with":[{"selector":"@s"},{"translate":"ウィンドウォール","color":"white","hoverEvent":{"action":"show_text","value":{"translate":"周囲の飛翔物を妨げる風を生み出す。","color":"white"}}}]}
