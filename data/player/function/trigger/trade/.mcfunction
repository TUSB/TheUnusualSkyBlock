#> player:trigger/trade/
### 取引時処理

### LimitedTrades
execute as @e[tag=LimitedTrades,distance=..8] at @s positioned ~ ~0.5 ~ if entity @e[type=experience_orb,distance=0] run function player:trigger/trade/limited_trades

### トリガーリセット
scoreboard players reset @s Trade
