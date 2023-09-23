
# 新しく召喚
execute as @a[distance=..32,tag=!BurstShadow] at @s run function skill:burst/ninja/shadow/summon

# 各分身ごとに処理する
execute as @a[distance=..32] at @s run function skill:burst/ninja/tick1

execute as @e[type=!player,tag=BurstShadow] at @s run function makeup:skill/burst/ninja/shadow