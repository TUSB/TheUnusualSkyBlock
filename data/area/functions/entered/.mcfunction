
# ゲームモード切替
execute if data storage area: {"アドベンチャーエリア":true} run tellraw @s[gamemode=survival] {"translate":"ブロックの設置・破壊が制限された。","color":"red"}
execute if data storage area: {"アドベンチャーエリア":true} run gamemode adventure @s[gamemode=survival] 
execute if data storage area: {"アドベンチャーエリア":false} run tellraw @s[gamemode=adventure] {"translate":"ブロックの設置・破壊制限が解除された。","color":"dark_aqua"}
execute if data storage area: {"アドベンチャーエリア":false} run gamemode survival @s[gamemode=adventure] 
