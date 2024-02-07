##############################
### １０秒処理
##############################

scoreboard players add $TenSeconds Count 1
execute if score $TenSeconds Count matches 6.. run function main:one_minute
scoreboard players set $Seconds Count 0

execute as @e[type=!player] unless predicate entity:kill_check run kill @s

# ライフスカウター デスポーン削除チェック
execute as @e[tag=LifeScouterText] unless predicate entity:vehicle run kill @s

# スポナーカートサウンド停止
stopsound @a neutral minecraft:entity.minecart.riding
