##############################
### モードスキル実行
##############################

###消費MP決定
scoreboard players operation @s ActiveCost = @s ModeCost
execute if score @s SneakTime matches 1.. run function skill_manager:practice/sneak_mode
###スキルインターバル設定
scoreboard players operation @s ActiveInterval = @s ModeInterval
###---演出---Start
execute if score @s MP < @s ActiveCost run tellraw @s {"text":"MPが不足しています。","color":"red"}
execute if score @s MP < @s ActiveCost run playsound minecraft:block.fire.extinguish master @s ~ ~ ~ 1 2
###---演出---End
execute if score @s MP < @s ActiveCost run scoreboard players reset @s ActiveSkill
function calc_manager:tellraw/interval
execute if score @s SkillInterval > $0 Const run scoreboard players reset @s ActiveSkill
execute if score @s ActiveSkill matches 1.. run scoreboard players operation @s MPConsumption += @s ActiveCost
###スキル発動不能時間設定
execute if score @s ActiveSkill matches 1.. run scoreboard players operation @s SkillInterval = @s ActiveInterval

### 剣士＜地裂斬＞
execute if score @s ActiveSkill matches 11021..11029 run function skill_manager:knight/crack_slash/act

### 剣士＜はやぶさ斬り＞
execute if score @s ActiveSkill matches 11011..11019 run function skill_manager:knight/falcon_slash/act

### 剣士＜真空斬り＞
execute if score @s ActiveSkill matches 11041..11049 run function skill_manager:knight/aerial_slash/act

### 剣士＜リアクティブヒール＞
execute if score @s ActiveSkill matches 11051..11059 run function skill_manager:knight/reactive_heal/act

### 剣士＜魔人斬り＞
execute if score @s ActiveSkill matches 11061..11069 run function skill_manager:knight/genie_slash/act

### 忍者＜一閃＞
execute if score @s ActiveSkill matches 21041..21049 run function skill_manager:ninja/issen/act

### 狩人＜バードストライク＞
execute if score @s ActiveSkill matches 31031..31039 run function skill_manager:hunter/bird_strike/act

### 狩人＜ワイルドフレア＞
execute if score @s ActiveSkill matches 31051..31059 run function skill_manager:hunter/blast_spark/act

### 狩人＜ワイルドフレア＞
execute if score @s ActiveSkill matches 31061..31069 run function skill_manager:hunter/wild_flare/act

### 狩人＜ステークスファイア＞
execute if score @s ActiveSkill matches 31011..31019 run function skill_manager:hunter/stakes_fire/act

### 白魔導士＜セイクリッドピラー＞
execute if score @s ActiveSkill matches 41041..41049 run function skill_manager:white_mage/sacred_pillar/act

### 黒魔導士＜アイスストーム＞
execute if score @s ActiveSkill matches 51011..51019 run function skill_manager:black_mage/ice_storm/act

### 黒魔導士＜アイスストーム＞
execute if score @s ActiveSkill matches 51021..51029 run function skill_manager:black_mage/cross_fire/act

### 召喚士＜ぽむぽむ花火＞
execute if score @s ActiveSkill matches 61081..61089 run function skill_manager:summoner/pompom/act

### 召喚士＜コールＣアタック＞
execute if score @s ActiveSkill matches 61071..61079 rotated ~ 0 positioned ^ ^1 ^3.5 run function skill_manager:summoner/call_crystal/summon/random
### 召喚士＜コールＣエンハンス＞
execute if score @s ActiveSkill matches 61091..61099 rotated ~ 0 positioned ^ ^1 ^3.5 run function skill_manager:summoner/call_crystal/summon/random

### 召喚士＜ぷちブラック＞
execute if score @s ActiveSkill matches 61111..61119 run function skill_manager:summoner/petit_black/launch

### 共通＜ウィークペイント＞
execute if score @s ActiveSkill matches 81011..81019 run function skill_manager:common/weakness_paint/act

### 共通＜ライブラ＞
execute if score @s ActiveSkill matches 81021..81022 run function skill_manager:common/libra/act

scoreboard players reset @s ActiveSkill
scoreboard players reset @s ActiveCost
scoreboard players reset @s ActiveInterval
