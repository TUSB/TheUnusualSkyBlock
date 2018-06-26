##############################
### サポートスキル実行
##############################

execute if score @s MP < @s SupportCost run tellraw @s {"text":"MPが不足しています。","color":"red"}
execute if score @s MP < @s SupportCost run scoreboard players reset @s SupportSkill
scoreboard players operation $Second Global = @s SkillInterval
scoreboard players operation $Second Global /= $20 Const
scoreboard players operation $MilliSecond Global = @s SkillInterval
scoreboard players operation $MilliSecond Global %= $20 Const
scoreboard players operation $MilliSecond Global *= $50 Const
execute if score @s SkillInterval > $0 Const if score $MilliSecond Global = $0 Const run tellraw @s [{"text":"スキルが使用できるまであと","color":"red"},{"score":{"name":"$Second","objective":"Global"}},".000秒"]
execute if score @s SkillInterval > $0 Const if score $MilliSecond Global = $50 Const run tellraw @s [{"text":"スキルが使用できるまであと","color":"red"},{"score":{"name":"$Second","objective":"Global"}},".050秒"]
execute if score @s SkillInterval > $0 Const unless score $MilliSecond Global matches 0..50 run tellraw @s [{"text":"スキルが使用できるまであと","color":"red"},{"score":{"name":"$Second","objective":"Global"}},".",{"score":{"name":"$MilliSecond","objective":"Global"}},"秒"]
execute if score @s SkillInterval > $0 Const run scoreboard players reset @s SupportSkill
execute if score @s SupportSkill matches 1.. run scoreboard players operation @s MPConsumption += @s SupportCost

### ファランクス
execute if score @s SupportSkill matches 12011..12019 run function skill_manager:knight/phalanx/act

### アイアンウィル
execute if score @s SupportSkill matches 12021..12029 run function skill_manager:knight/iron_will/act

### 介錯
execute if score @s SupportSkill matches 22081..22089 run function skill_manager:ninja/kaishaku/act

### ダークスワンプ
execute if score @s SupportSkill matches 52071..52079 run function skill_manager:black_mage/dark_swamp/act

### ピアッシングエイム
execute if score @s SupportSkill matches 32071..32079 run function skill_manager:hunter/piercing_aim/act

scoreboard players reset @s SupportSkill
scoreboard players reset @s SupportCost
