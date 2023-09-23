
#成功フラグ
data modify storage skill: Success set value 1b

# 忍者 バースト
execute if entity @s[tag=BurstShadow] run function skill:burst/ninja/act1

#実行
function skill:practice/act/
#MP消費
execute if data storage skill: {Success:true} run scoreboard players operation @s MP -= _ MP

#スキルを使ったらMP回復速度を落とす
execute if data storage skill: {Success:true} if score _ MP matches 1.. run scoreboard players set @s MPAcceleration -600

#MPバー反映
function player:mp_bar/set

tellraw @a ["-- MyUUID --\n",{"entity":"@s","nbt":"UUID"}]
execute as @e[tag=!Initialized,distance=..10] run tellraw @a {"entity":"@s","nbt":"Owner"}