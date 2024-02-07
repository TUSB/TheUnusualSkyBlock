
### ジン・スピリット処理

#回転
tp @s ~ ~ ~ ~3 ~
#コウモリ召喚
scoreboard players remove @s Count 1
execute if score @s Count matches ..0 if entity @e[tag=Enemy,scores={Damage=1..}] run function skill:act/black_mage/gin_spirit/summon

function makeup:skill/act/black_mage/gin_spirit/tick
