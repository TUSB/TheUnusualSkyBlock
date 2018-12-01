##############################
### 死亡時処理
##############################

### オーラ解除
scoreboard players set @s Aura 0

### 状態異常回復
function skill_manager:white_mage/clear/cure/level4
scoreboard players operation @s ResistEffects = @s ResistMin

### 忍者＜サヨナラ＞
execute if score @s ModeSkill matches 21061..21069 run scoreboard players operation @s ActiveSkill = @s ModeSkill

### レイズ処理
tag @s[tag=Reraise] add Raise
tag @s[tag=Reraise] remove Reraise
execute if entity @s[tag=Raise] run function skill_manager:white_mage/araise/raise

### 呪詛処理
execute if entity @s[tag=Curse] run function effect_manager:curse/death

### 特殊床
# execute if score @s Age matches ..0 run gamerule showDeathMessages false
execute if block ~ ~-2 ~ minecraft:nether_wart_block if entity @s[nbt={OnGround:true}] run tellraw @a ["「うおーっ！！」",{"selector":"@s"},"は  さけび  ごえを  あげ、さんを  だす  にくいゆかへ   ホップ・ステップ・ジャンプ．．．かーるいす！！\n",{"selector":"@s"},"は  とけ、ゆかと  どうか  してしまった。"]
# execute if score @s Age matches ..0 run gamerule showDeathMessages true

### 死亡トリガーリセット
execute store result score @s Hunger run data get entity @s foodLevel
scoreboard players reset @s Deaths

### TIPS表示
function main:tips/show

### 進捗処理
execute if entity @s[advancements={advancement_manager:common/death=false}] run advancement grant @s only advancement_manager:common/death
execute if entity @s[y=-64,dy=-1024,advancements={advancement_manager:common/void_death=false}] run advancement grant @s only advancement_manager:common/void_death
execute if entity @s[x=-288,z=-3296,dx=639,dz=1311,advancements={advancement_manager:table_mountain/death=false}] run advancement grant @s only advancement_manager:table_mountain/death
scoreboard players add @s DeathCountAd 1
execute if entity @s[scores={DeathCountAd=100..},advancements={advancement_manager:common/many_death=false}] run advancement grant @s only advancement_manager:common/many_death