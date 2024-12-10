#> item:sign/click/trade
##############################
### 取引の印版
##############################

# スコア初期化
    scoreboard players set _ Calc 0

# 羊毛の個数確認/取引処理
    execute store result score _ _ run clear @s white_wool 0
    execute if score _ _ matches 32.. run scoreboard players add _ Calc 1
    execute if score _ _ matches 32.. run clear @s white_wool 32
    execute if score _ _ matches 32.. run give @s emerald 1

# 演出分岐
    execute unless score _ Calc matches 0 run return run function makeup:item/sign/trade/success

# 砂利の個数確認/取引処理
# ※羊毛のトレードが失敗した時のみコマンドを動かす
    scoreboard players set _ _ 0
    execute store result score _ _ run clear @s gravel 0
    execute if score _ _ matches 32.. run scoreboard players add _ Calc 1
    execute if score _ _ matches 32.. run clear @s gravel 32
    execute if score _ _ matches 32.. run give @s emerald 1

# 演出分岐
    execute unless score _ Calc matches 0 run function makeup:item/sign/trade/success
    execute if score _ Calc matches 0 run function makeup:item/sign/trade/fail
