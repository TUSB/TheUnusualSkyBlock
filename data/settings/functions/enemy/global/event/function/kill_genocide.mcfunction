#Function
execute as @e[distance=..8,tag=Genocide] run tag @s add Garbage
data modify storage mob_data: MobName set from entity @s CustomName
execute if entity @e[distance=..8,tag=Genocide] run tellraw @a [{"translate":"%1$sから放たれたオーラは、%2$sを跡形もなく吹き飛ばしてしまった。","color":"white","bold":true,"with":[{"storage":"mob_data:","nbt":"MobName","interpret":true,"bold":false},[{"translate":"|","color":"#FF5555","bold":true,"obfuscated":true},{"translate":"|","color":"#FFAA00"},{"translate":"|","color":"#FFFF55"},{"translate":"|","color":"#55FF55"},{"translate":"|","color":"#00AAAA"},{"translate":"|","color":"#55FFFF"},{"translate":"|","color":"#5555FF"},{"translate":"|","color":"#FF55FF"},{"translate":"-=< ","color":"#FFFFFF","bold":true,"obfuscated":false},{"translate":"ジェノサイドボム","color":"#FF5555","bold":true,"obfuscated":false},{"translate":" >=-","color":"#FFFFFF","bold":true,"obfuscated":false},{"translate":"|","color":"#FF55FF"},{"translate":"|","color":"#5555FF"},{"translate":"|","color":"#55FFFF"},{"translate":"|","color":"#00AAAA"},{"translate":"|","color":"#55FF55"},{"translate":"|","color":"#FFFF55"},{"translate":"|","color":"#FFAA00"},{"translate":"|","color":"#FF5555"}]]}]
