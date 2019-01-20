##############################
### ワイルドカード処理 -roll
##############################

#MyBanner取得
scoreboard players operation $ID Global = @s ID
execute as @e[tag=Banner] if score @s ID = $ID Global run tag @s add MyBanner
#スコア取得
scoreboard players operation $WildCard Global = @s WildCard
#回転
execute rotated as @e[tag=Center,tag=MyBanner,limit=1] as @e[tag=MyBanner] run function skill_manager:black_mage/wild_card/roll/rotate
#召喚
scoreboard players operation $WildCard Global %= $6 Const
execute if score $WildCard Global matches 0 rotated as @e[tag=Center,tag=MyBanner,limit=1] run function skill_manager:black_mage/wild_card/roll/summon
#選択
execute if score @s WildCard matches 0 run function skill_manager:black_mage/wild_card/roll/select

tag @e[tag=MyBanner] remove MyBanner
execute if score @s WildCard matches ..-1 run scoreboard players add @s WildCard 1

###---演出---Start
particle minecraft:entity_effect ~ ~0.2 ~ 1.5 0.1 1.5 10000000 10 force @a[tag=ShowParticles]
###---演出---End
