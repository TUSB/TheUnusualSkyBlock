##############################
### 猛火斬発動
##############################

###---演出---Start

###---演出---End

function calc_manager:target/melee/catch

###ダメージ設定
scoreboard players operation $RagingCount Global = @e[tag=MeleeTarget,limit=1] RagingDamage
scoreboard players operation $RagingCount Global %= $100 Const
execute store result score $EnemyCount Global if entity @e[distance=..5,tag=Mob]
scoreboard players operation $EnemyCount Global += @e[distance=..5,tag=Mob] BlinkCount
scoreboard players operation $RagingCount Global += $EnemyCount Global
scoreboard players add $RagingCount Global 3
scoreboard players operation $RagingCount Global < $99 Const

execute if score @s ModeSkill matches 11021 as @e[tag=MeleeTarget,limit=1] at @s run scoreboard players set @s RagingDamage 9000
execute if score @s ModeSkill matches 11022 as @e[tag=MeleeTarget,limit=1] at @s run scoreboard players set @s RagingDamage 29000
execute if score @s ModeSkill matches 11023 as @e[tag=MeleeTarget,limit=1] at @s run scoreboard players set @s RagingDamage 185000

scoreboard players operation @e[tag=MeleeTarget,limit=1] RagingDamage += $RagingCount Global

### ビットレイズ
scoreboard players operation $BitFlags Global = @e[tag=MeleeTarget,limit=1] TemporaryEffects
scoreboard players set $Digit Global 29
function calc_manager:bit/raise_at_x_digit
scoreboard players operation @e[tag=MeleeTarget,limit=1] TemporaryEffects = $BitFlags Global

function calc_manager:target/melee/release
