#> player:trigger/trade/limited_trades
### LimitedTrades

execute store result entity @s DeathLootTableSeed long 0.99999 run data get entity @s DeathLootTableSeed
execute unless data entity @s DeathLootTableSeed run data modify entity @s {} merge value {DeathTime:19s,Silent:1b,Tags:[Garbage]}
execute unless data entity @s DeathLootTableSeed run tellraw @a[distance=..16] [{"translate":"%1$s は去っていった。","with":[{"selector":"@s"}]}]
