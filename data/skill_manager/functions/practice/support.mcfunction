##############################
### サポートスキル実行
##############################

###消費MP決定
execute if score @s SneakTime matches 1.. run function skill_manager:practice/sneak_support
###---演出---Start
execute if score @s MP < @s SupportCost run tellraw @s {"text":"MPが不足しています。","color":"red"}
execute if score @s MP < @s SupportCost run playsound minecraft:block.fire.extinguish master @s ~ ~ ~ 1 2
###---演出---End
execute if score @s MP < @s SupportCost run scoreboard players reset @s SupportSkill
function calc_manager:tellraw/interval
execute if score @s SkillInterval > $0 Const run scoreboard players reset @s SupportSkill
execute if score @s SupportSkill matches 1.. run scoreboard players operation @s MPConsumption += @s SupportCost
###スキル発動不能時間設定
execute if score @s SupportSkill matches 1.. run scoreboard players operation @s SkillInterval = @s SupportInterval

### ファランクス
execute if score @s SupportSkill matches 12011..12019 run function skill_manager:knight/phalanx/act

### アイアンウィル
execute if score @s SupportSkill matches 12021..12029 run function skill_manager:knight/iron_will/act

### 鍛冶
execute if score @s SupportSkill matches 12031..12039 run function skill_manager:knight/blacksmith/act

### デコイ
execute if score @s SupportSkill matches 12041..12049 at @e[tag=Egg,distance=..6,sort=nearest,limit=1] run function skill_manager:knight/decoy/act

### 介錯
execute if score @s SupportSkill matches 22081..22089 run function skill_manager:ninja/kaishaku/act

### ダークスワンプ
execute if score @s SupportSkill matches 52071..52079 run function skill_manager:black_mage/dark_swamp/act

### ピアッシングエイム
execute if score @s SupportSkill matches 32071..32079 run function skill_manager:hunter/piercing_aim/act

### スノウチャージ
execute if score @s SupportSkill matches 82011..82019 run function skill_manager:common/snow_charge/act

scoreboard players reset @s SupportSkill
scoreboard players reset @s SupportCost
