#> entity:ten_seconds
# -> 1分処理
## 使用するときにコメントアウトを外してください。
execute if score $TenSeconds Count matches 0 run function entity:one_minute

execute as @e[type=!player] unless predicate entity:kill_check run tag @s add Garbage

# ライフスカウター デスポーン削除チェック
execute as @e[tag=LifeScouterText] unless predicate entity:vehicle run kill @s
