##############################
### 初回ロード処理
##############################

###ステータスやトリガー
scoreboard objectives add HP health HP
scoreboard objectives add MP dummy MP
scoreboard objectives add MPMax dummy MP最大値
scoreboard objectives add Armor armor 防御力
scoreboard objectives add KillCount playerKillCount 討伐数
scoreboard objectives add SneakTime minecraft.custom:minecraft.sneak_time スニーク時間
scoreboard objectives add UseSupportRed minecraft.used:minecraft.pig_spawn_egg サポートエッグルビー使用
scoreboard objectives add UseSupportBlue minecraft.used:minecraft.drowned_spawn_egg サポートエッグサファイア使用
###変数や定数、カウンタ
scoreboard objectives add Global dummy グローバル変数
scoreboard objectives add Const dummy 定数
scoreboard objectives add Count dummy カウント
scoreboard objectives add DoomCount dummy 死の宣告カウント
scoreboard objectives add TorchCount dummy トカルトトーチ消費カウント
###ID系
scoreboard objectives add ID dummy 紐付けID
###設定されたスキル
scoreboard objectives add ModeSkill dummy 現在のモードスキル
scoreboard objectives add ModeSkillRed dummy モードスキルルビー
scoreboard objectives add ModeSkillBlue dummy モードスキルサファイア
scoreboard objectives add ShowSkillNo dummy 表示スキル番号
###スキル系
scoreboard objectives add BurstTrigger dummy バースト発動カウント
scoreboard objectives add IronWill dummy アイアンウィル

###定数
scoreboard players set $-1 Const -1
scoreboard players set $2 Const 2
scoreboard players set $3 Const 3
scoreboard players set $4 Const 4
scoreboard players set $10 Const 10
scoreboard players set $30 Const 30
scoreboard players set $50 Const 50
scoreboard players set $100 Const 100
scoreboard players set $10000 Const 10000
scoreboard players set $99999 Const 99999
scoreboard players set $100000 Const 100000
scoreboard players set $112000 Const 112000
scoreboard players set $MWCBase Const 65536
scoreboard players set $MWCMultiplier Const 31743
###バースト初期化
scoreboard players set #Aura MP 10000
###イベントタイマー初期化
scoreboard players set $EventTimer Count 100
###乱数初期化
summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,DurationOnUse:0,Age:0,WaitTime:1,ReapplicationDelay:0,Duration:0,Tags:[Initialized]}
execute store result score $RndMWC Global run data get entity @e[distance=..1,type=minecraft:area_effect_cloud,limit=1] UUIDMost 0.0000000001
execute store result score $RndMWCCarry Global run data get entity @e[distance=..1,type=minecraft:area_effect_cloud,limit=1] UUIDLeast 0.0000000001
execute if score $RndMWC Global matches ..0 run scoreboard players operation $RndMWC Global *= $-1 Const
execute if score $RndMWCCarry Global matches ..0 run scoreboard players operation $RndMWCCarry Global *= $-1 Const
scoreboard players operation $RndMWC Global %= $MWCBase Const
scoreboard players operation $RndMWCCarry Global /= $MWCBase Const
