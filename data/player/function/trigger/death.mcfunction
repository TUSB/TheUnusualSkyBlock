#> player:trigger/death
### 死亡時処理

# 死亡ディメンション記録
function #oh_my_dat:please
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LastDeathDimension set from entity @s Dimension

# TUSBv13α2 チュートリアル中の死亡処理
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].tutorial_alpha run function tutorial_alpha:system/respawn

#奈落死亡処理
execute if entity @s[advancements={player:trigger/death={void_death=true}}] run function player:trigger/void_death/

# レイズ処理
tag @s[tag=Reraise] add Raise
tag @s[tag=Reraise] remove Reraise
execute if entity @s[tag=Raise] run function skill:act/white_mage/araise/raise

# サヨナラ処理
execute if score @s SayonaraLevel matches 1.. run function skill:act/ninja/sayonara/trigger/death

#トグルスキル解除
execute if entity @s[tag=!Raise] run function skill:toggle_reset

# アイテムドロップ処理
function player:death_item_drop/

# 特殊床
execute if block ~ ~-2 ~ minecraft:nether_wart_block if entity @s[nbt={OnGround:true}] run tellraw @a [{"translate":"「うおーっ！！」%1$sは  さけび  ごえを  あげ、さんを  だす  にくいゆかへ   ホップ・ステップ・ジャンプ．．．かーるいす！！\n%1$sは  とけ、ゆかと  どうか  してしまった。","with":[{"selector":"@s"}]}]

#各種デバフ解除
execute if score @s FreezeTimer matches 0.. run function effects:freeze/cure
function skill:act/white_mage/clear/cure/level4

## 死亡トリガーリセット
execute store result score @s Hunger run data get entity @s foodLevel
scoreboard players reset @s Deaths
advancement revoke @s only player:trigger/death

# TIPS表示
function player:tips/show
