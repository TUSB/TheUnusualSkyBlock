
# ゲームモード切替
execute if data storage area: {"アドベンチャーエリア":true} run gamemode adventure @s[gamemode=survival] 
execute if data storage area: {"アドベンチャーエリア":false} run gamemode survival @s[gamemode=adventure] 

# スポナーカートサウンド停止
stopsound @a neutral minecraft:entity.minecart.riding
