
### バースト経過

execute store result score _ _ if entity @a[distance=..32]
execute if score _ _ matches 1 run scoreboard players remove @s Burst 50
execute if score _ _ matches 2..3 run scoreboard players remove @s Burst 60
execute if score _ _ matches 4..6 run scoreboard players remove @s Burst 70
execute if score _ _ matches 7..10 run scoreboard players remove @s Burst 85
execute if score _ _ matches 11.. run scoreboard players remove @s Burst 100


###無敵
execute if score @s Job matches 1 run effect give @a[distance=..32] minecraft:resistance 1 127
###忍者
# 
###狩人
# 
###常時キアリク
# effects:bad_effects内で処理
###消費MP0
# practice内で処理
###召喚士
# 
###スキルレベル上昇
# practice内で処理
###怪盗
# 

execute as 0-0-0-0-0 at @s run function calc:set/random_rotation
execute if score @s Job matches 1 rotated as 0-0-0-0-0 run function makeup:skill/burst/knight
execute if score @s Job matches 2 rotated as 0-0-0-0-0 run function makeup:skill/burst/ninja
execute if score @s Job matches 3 rotated as 0-0-0-0-0 run function makeup:skill/burst/hunter
execute if score @s Job matches 4 rotated as 0-0-0-0-0 run function makeup:skill/burst/white_mage
execute if score @s Job matches 5 rotated as 0-0-0-0-0 run function makeup:skill/burst/black_mage
execute if score @s Job matches 6 rotated as 0-0-0-0-0 run function makeup:skill/burst/summoner
execute if score @s Job matches 7 rotated as 0-0-0-0-0 run function makeup:skill/burst/puppet_master
# execute if score @s Job matches 8 rotated as 0-0-0-0-0 run function makeup:skill/burst/thief

# ボスバー更新
execute store result bossbar skill:burst value run scoreboard players get @s Burst
scoreboard players operation _ Burst = $Tick Count
scoreboard players set _ _ 18
scoreboard players operation _ Burst %= _ _
execute if score _ Burst matches 0..2 run bossbar set skill:burst color yellow
execute if score _ Burst matches 3..5 run bossbar set skill:burst color red
execute if score _ Burst matches 6..8 run bossbar set skill:burst color pink
execute if score _ Burst matches 9..11 run bossbar set skill:burst color purple
execute if score _ Burst matches 12..14 run bossbar set skill:burst color blue
execute if score _ Burst matches 15..17 run bossbar set skill:burst color green

execute if score @s Burst matches ..0 run function skill:burst/finish
