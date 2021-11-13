
### 死亡時処理

# レイズ処理
tag @s[tag=Reraise] add Raise
tag @s[tag=Reraise] remove Reraise
execute if entity @s[tag=Raise] run function skill:act/white_mage/araise/raise

# 呪詛
execute if entity @s[tag=Curse] run function effects:curse/death

# 特殊床
execute if block ~ ~-2 ~ minecraft:nether_wart_block if entity @s[nbt={OnGround:true}] run tellraw @a [{"translate":"「うおーっ！！」%1$sは  さけび  ごえを  あげ、さんを  だす  にくいゆかへ   ホップ・ステップ・ジャンプ．．．かーるいす！！\n%1$sは  とけ、ゆかと  どうか  してしまった。","with":[{"selector":"@s"}]}]

#凍結デバフ解除
function effects:freeze/cure

## 死亡トリガーリセット
execute store result score @s Hunger run data get entity @s foodLevel
scoreboard players reset @s Deaths

# TIPS表示
function player:tips/show
