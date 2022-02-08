### LimitedTrades

execute store result entity @s DeathLootTableSeed int 0.99999 run data get entity @s DeathLootTableSeed
execute unless data entity @s DeathLootTableSeed run data modify entity @s {} merge value {DeathTime:19s,Silent:1b,Tags:[Garbage]}
execute unless data entity @s DeathLootTableSeed run tellraw @a[distance=..16] [{"selector":"@s"},{"text":" は去っていった。"}]
