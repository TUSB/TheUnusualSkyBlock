##############################
### 初回ロード処理
##############################

###ステータスやトリガー
scoreboard objectives add HP health HP
scoreboard objectives add MP dummy MP
scoreboard objectives add MPMax dummy MP最大値
scoreboard objectives add Armor armor 防御力
scoreboard objectives add HealthHealing dummy HP回復量
scoreboard objectives add KillCount playerKillCount 討伐数
scoreboard objectives add TimeSinceDeath minecraft.custom:minecraft.time_since_death 生きている時間
scoreboard objectives add SneakTime minecraft.custom:minecraft.sneak_time スニーク時間
scoreboard objectives add UseModeEgg minecraft.used:minecraft.polar_bear_spawn_egg モードチェンジ使用
scoreboard objectives add UseSupportRed minecraft.used:minecraft.pig_spawn_egg サポートエッグルビー使用
scoreboard objectives add UseSupportBlue minecraft.used:minecraft.drowned_spawn_egg サポートエッグサファイア使用
scoreboard objectives add DroppedMode minecraft.dropped:minecraft.polar_bear_spawn_egg モードチェンジドロップ
scoreboard objectives add DroppedRed minecraft.dropped:minecraft.pig_spawn_egg サポートエッグルビードロップ
scoreboard objectives add DroppedBlue minecraft.dropped:minecraft.drowned_spawn_egg サポートエッグルビードロップ
scoreboard objectives add UseSnowball minecraft.used:minecraft.snowball 雪玉使用
scoreboard objectives add UseBow minecraft.used:minecraft.bow 弓使用
scoreboard objectives add UseCarrotStick minecraft.used:minecraft.carrot_on_a_stick 人参棒使用
scoreboard objectives add SprintOneCm minecraft.custom:minecraft.sprint_one_cm 走った距離
scoreboard objectives add DamageDealt minecraft.custom:minecraft.damage_dealt 与えたダメージ量
scoreboard objectives add DamageTaken minecraft.custom:minecraft.damage_taken 受けたメージ量
scoreboard objectives add UseSplashPotion minecraft.used:minecraft.splash_potion 投擲ポーション使用
scoreboard objectives add UseLingerPotion minecraft.used:minecraft.lingering_potion 残留ポーション使用
scoreboard objectives add Jump minecraft.custom:minecraft.jump ジャンプ
scoreboard objectives add Deaths minecraft.custom:minecraft.deaths 死亡
scoreboard objectives add LeaveGame minecraft.custom:minecraft.leave_game ログインフラグ
###変数や定数、カウンタ
scoreboard objectives add Global dummy グローバル変数
scoreboard objectives add Const dummy 定数
scoreboard objectives add Count dummy カウント
scoreboard objectives add DoomCount dummy 死の宣告カウント
scoreboard objectives add TorchCount dummy トカルトトーチ消費カウント
scoreboard objectives add VirusCount dummy 病気カウント
scoreboard objectives add ConfuseCount dummy 混乱カウント
scoreboard objectives add TerrorLevel dummy 恐怖レベル
scoreboard objectives add TntCount dummy トントカウント
scoreboard objectives add RegistEffects dummy 状態異常耐性
scoreboard objectives add RegistMin dummy 状態異常耐性下限
###ID系
scoreboard objectives add ID dummy 紐付けID
scoreboard objectives add Dimension dummy ディメンション
###ジョブ別設定
scoreboard objectives add Job dummy 現在のジョブ
scoreboard objectives add Level dummy レベル
scoreboard objectives add LevelKnight dummy 剣士のレベル
scoreboard objectives add LevelNinja dummy 忍者のレベル
scoreboard objectives add LevelHunter dummy 狩人のレベル
scoreboard objectives add LevelWhiteMage dummy 白魔導士のレベル
scoreboard objectives add LevelBlackMage dummy 黒魔導士のレベル
scoreboard objectives add LevelSummoner dummy 召喚士のレベル
scoreboard objectives add LevelPupMaster dummy 絡繰士のレベル
scoreboard objectives add SubLevel dummy 現在のジョブのサブレベル
scoreboard objectives add SubKnight dummy 剣士のサブレベル
scoreboard objectives add SubNinja dummy 忍者のサブレベル
scoreboard objectives add SubHunter dummy 狩人のサブレベル
scoreboard objectives add SubWhiteMage dummy 白魔導士のサブレベル
scoreboard objectives add SubBlackMage dummy 黒魔導士のサブレベル
scoreboard objectives add SubSummoner dummy 召喚士のサブレベル
scoreboard objectives add SubPupMaster dummy 絡繰士のサブレベル
###設定されたスキル
scoreboard objectives add Cost dummy MPコスト一覧
scoreboard objectives add Interval dummy スキル使用不能時間一覧
scoreboard objectives add ModeSkill dummy 現在のモードスキル
scoreboard objectives add ModeCost dummy 現在のモードスキルのコスト
scoreboard objectives add ModeInterval dummy 現在のモードスキルの発動無効時間
scoreboard objectives add ModeSkillRed dummy モードスキルルビー
scoreboard objectives add ModeSkillBlue dummy モードスキルサファイア
scoreboard objectives add ModeCostRed dummy モードスキルルビーのコスト
scoreboard objectives add ModeCostBlue dummy モードスキルサファイアのコスト
scoreboard objectives add ModeIntervalRed dummy モードスキルルビーの発動無効時間
scoreboard objectives add ModeIntervalBlue dummy モードスキルサファイアの発動無効時間
scoreboard objectives add SupportSkill dummy 発動中のサポートスキル
scoreboard objectives add SupportCost dummy 発動中のサポートスキルのコスト
scoreboard objectives add SupportInterval dummy 発動中のサポートスキルの発動無効時間
scoreboard objectives add SupportSkillRed dummy サポートアクションルビー
scoreboard objectives add SupportSkillBlue dummy サポートアクションファイア
scoreboard objectives add SupportCostRed dummy サポートアクションルビーのコスト
scoreboard objectives add SupportCostBlue dummy サポートアクションサファイアのコスト
scoreboard objectives add SupportIntRed dummy サポートアクションルビーの発動無効時間
scoreboard objectives add SupportIntBlue dummy サポートアクションサファイアの発動無効時間
scoreboard objectives add ShowSkillNo dummy 表示スキル番号
scoreboard objectives add ChangeModeRed trigger モードルビー変更番号
scoreboard objectives add ChangeModeBlue trigger モードサファイア変更番号
scoreboard objectives add ChangeSupRed trigger サポートルビー変更番号
scoreboard objectives add ChangeSupBlue trigger サポートサファイア変更番号
scoreboard objectives add ChangeLevel dummy スキル変更時レベル上限
scoreboard objectives add ActiveSkill dummy 発動スキル
scoreboard objectives add ActiveCost dummy 発動スキルコスト
scoreboard objectives add ActiveInterval dummy 発動スキル発動無効時間
###スキル共通系
scoreboard objectives add MobHPMax dummy モブ最大体力
scoreboard objectives add SkillInterval dummy スキル使用不可tick数
scoreboard objectives add MPHealingWait dummy MP回復ウェイト
scoreboard objectives add MPConsumption dummy MP消費量
scoreboard objectives add Damage dummy モブ付与ダメージ
scoreboard objectives add StoredDamage dummy 累積型ダメージ
scoreboard objectives add BurstTrigger dummy バースト発動カウント
scoreboard objectives add ChangeSkillLimit dummy スキル変更不可時間
scoreboard objectives add ProjectileSkill dummy 飛翔物付与スキル
scoreboard objectives add SkillAttribute dummy スキル付加情報
scoreboard objectives add CarrotContinue dummy 人参棒連続カウント
scoreboard objectives add CarrotTick dummy 人参棒使用LastTick
###スキル個別系
scoreboard objectives add FalconDamage dummy はやぶさ斬り用ダメージ保存値
scoreboard objectives add FalconHP dummy はやぶさ斬り用敵HP
scoreboard objectives add IronWill dummy アイアンウィル残りtick数
scoreboard objectives add DivineShield dummy ディバインシールドダメージ量
scoreboard objectives add OdinSlash dummy 斬鉄剣発動タイミング調整
scoreboard objectives add TacticalHeal dummy タクティカルヒール持続確率
scoreboard objectives add Aisatsu dummy アイサツ消費MP減少効果量
scoreboard objectives add WaterAffinity dummy ウォータアフィニティ
scoreboard objectives add FireAffinity dummy ファイアアフィニティ
scoreboard objectives add Choyaku dummy 跳躍跳躍力
scoreboard objectives add ChoyakuTrigger dummy 跳躍発動タイミング調整
scoreboard objectives add Mokuso dummy 黙想レベル
scoreboard objectives add Issen dummy 一閃継続tick数
scoreboard objectives add Kaishaku dummy 介錯残りtick数
scoreboard objectives add PiercingAim dummy ピアッシングエイム回数
scoreboard objectives add BlastSpark dummy ブラストスパーク継続tick数
scoreboard objectives add EnergySave dummy エナジーセーブ消費MP減少効果量
scoreboard objectives add PillarCount dummy セイクリッドピラーダメージ付与上限
scoreboard objectives add PillarDamage dummy セイクリッドピラーダメージ
scoreboard objectives add DarkSwamp dummy ダークスワンプ回数
scoreboard objectives add PetitBlack dummy ぷちブラック残りtick
scoreboard objectives add MultiThread dummy マルチスレッド
###からくり士スキル系
scoreboard objectives add PuppetScore dummy パペット制御用スコア
scoreboard objectives add PupRecordLevel dummy レコード特性のレベル
scoreboard objectives add PupRecordType dummy レコードの種類
scoreboard objectives add PupRecordSlot dummy レコードのスロット
scoreboard objectives add PupSwimmability dummy パペット水中機動力
scoreboard objectives add PupFlyability dummy パペット空中機動力
scoreboard objectives add PupMobility dummy パペット陸上機動力
scoreboard objectives add PupCurrentSlot dummy パペット行動スロット
scoreboard objectives add PuppetWait dummy パペット行動ウェイト
###その他スコア
scoreboard objectives add ProjectileLife dummy 飛翔物生存時間
scoreboard objectives add MotionX dummy モーションX保存
scoreboard objectives add MotionY dummy モーションY保存
scoreboard objectives add MotionZ dummy モーションZ保存
scoreboard objectives add SkillHurtTime dummy スキルダメージ無効果時間
scoreboard objectives add EnemySkillSpan dummy 敵スキル使用間隔

###定数
scoreboard players set $-1 Const -1
scoreboard players set $0 Const 0
scoreboard players set $1 Const 1
scoreboard players set $2 Const 2
scoreboard players set $3 Const 3
scoreboard players set $4 Const 4
scoreboard players set $5 Const 5
scoreboard players set $6 Const 6
scoreboard players set $8 Const 8
scoreboard players set $10 Const 10
scoreboard players set $11 Const 11
scoreboard players set $12 Const 12
scoreboard players set $13 Const 13
scoreboard players set $15 Const 15
scoreboard players set $18 Const 18
scoreboard players set $20 Const 20
scoreboard players set $25 Const 25
scoreboard players set $30 Const 30
scoreboard players set $34 Const 34
scoreboard players set $35 Const 35
scoreboard players set $40 Const 40
scoreboard players set $50 Const 50
scoreboard players set $60 Const 60
scoreboard players set $70 Const 70
scoreboard players set $80 Const 80
scoreboard players set $100 Const 100
scoreboard players set $110 Const 110
scoreboard players set $150 Const 150
scoreboard players set $200 Const 200
scoreboard players set $250 Const 250
scoreboard players set $300 Const 300
scoreboard players set $450 Const 450
scoreboard players set $1000 Const 1000
scoreboard players set $1200 Const 1200
scoreboard players set $3600 Const 3600
scoreboard players set $10000 Const 10000
scoreboard players set $20000 Const 20000
scoreboard players set $30000 Const 30000
scoreboard players set $99999 Const 99999
scoreboard players set $100000 Const 100000
scoreboard players set $112000 Const 112000
scoreboard players set $200000 Const 200000
scoreboard players set $300000 Const 300000
scoreboard players set $MWCBase Const 65536
scoreboard players set $MWCMultiplier Const 31743
###MP一覧
##剣士
scoreboard players set $1101 Cost 15
scoreboard players set $1102 Cost 20
scoreboard players set $1103 Cost 10
scoreboard players set $1104 Cost 5
scoreboard players set $1105 Cost 10
scoreboard players set $1106 Cost 30
scoreboard players set $1107 Cost 100
scoreboard players set $1201 Cost 20
scoreboard players set $1202 Cost 25
scoreboard players set $1203 Cost 10
scoreboard players set $1204 Cost 10
scoreboard players set $1205 Cost 20
##忍者
scoreboard players set $2101 Cost 2
scoreboard players set $2102 Cost 3
scoreboard players set $2103 Cost 3
scoreboard players set $2104 Cost 60
scoreboard players set $2105 Cost 5
scoreboard players set $2106 Cost 0
scoreboard players set $2201 Cost 10
scoreboard players set $2202 Cost 20
scoreboard players set $2203 Cost 20
scoreboard players set $2204 Cost 20
scoreboard players set $2205 Cost 10
scoreboard players set $2206 Cost 40
scoreboard players set $2207 Cost 30
scoreboard players set $2208 Cost 50
scoreboard players set $2209 Cost 30
##狩人
scoreboard players set $3101 Cost 15
scoreboard players set $3102 Cost 15
scoreboard players set $3103 Cost 15
scoreboard players set $3104 Cost 5
scoreboard players set $3105 Cost 15
scoreboard players set $3106 Cost 25
scoreboard players set $3107 Cost 100
scoreboard players set $3201 Cost 10
scoreboard players set $3202 Cost 20
scoreboard players set $3203 Cost 5
scoreboard players set $3204 Cost 30
scoreboard players set $3205 Cost 10
scoreboard players set $3206 Cost 50
scoreboard players set $3207 Cost 40
scoreboard players set $3208 Cost 40
##白魔導士
scoreboard players set $4101 Cost 10
scoreboard players set $4102 Cost 10
scoreboard players set $4103 Cost 30
scoreboard players set $4104 Cost 20
scoreboard players set $4105 Cost 100
scoreboard players set $4201 Cost 20
scoreboard players set $4202 Cost 40
scoreboard players set $4203 Cost 30
scoreboard players set $4204 Cost 40
scoreboard players set $4205 Cost 60
scoreboard players set $4206 Cost 70
scoreboard players set $4207 Cost 80
##黒魔導士
scoreboard players set $5101 Cost 20
scoreboard players set $5102 Cost 20
scoreboard players set $5103 Cost 20
scoreboard players set $5104 Cost 20
scoreboard players set $5105 Cost 30
scoreboard players set $5106 Cost 100
scoreboard players set $5201 Cost 60
scoreboard players set $5202 Cost 60
scoreboard players set $5203 Cost 60
scoreboard players set $5204 Cost 60
scoreboard players set $5205 Cost 40
scoreboard players set $5206 Cost 50
scoreboard players set $5207 Cost 60
scoreboard players set $5208 Cost 25
scoreboard players set $5209 Cost 70
scoreboard players set $5210 Cost 80
##召喚士
scoreboard players set $6101 Cost 20
scoreboard players set $6102 Cost 5
scoreboard players set $6103 Cost 20
scoreboard players set $6104 Cost 20
scoreboard players set $6105 Cost 25
scoreboard players set $6106 Cost 30
scoreboard players set $6107 Cost 40
scoreboard players set $6108 Cost 10
scoreboard players set $6109 Cost 40
scoreboard players set $6110 Cost 45
scoreboard players set $6111 Cost 100
scoreboard players set $6201 Cost 20
scoreboard players set $6202 Cost 30
scoreboard players set $6203 Cost 10
scoreboard players set $6204 Cost 30
scoreboard players set $6205 Cost 40
scoreboard players set $6206 Cost 50
scoreboard players set $6207 Cost 40
scoreboard players set $6208 Cost 50
scoreboard players set $6209 Cost 60
##絡繰士
scoreboard players set $7101 Cost 20
scoreboard players set $7102 Cost 3
scoreboard players set $7103 Cost 0
scoreboard players set $7104 Cost 20
scoreboard players set $7105 Cost 100
scoreboard players set $7201 Cost 100
scoreboard players set $7202 Cost 20
scoreboard players set $7203 Cost 20
scoreboard players set $7204 Cost 60
scoreboard players set $7205 Cost 30
scoreboard players set $7206 Cost 15
scoreboard players set $7207 Cost 10
scoreboard players set $7208 Cost 50
scoreboard players set $7209 Cost 10
###共通
scoreboard players set $8101 Cost 5
scoreboard players set $8102 Cost 1
scoreboard players set $8201 Cost 10
###スキル使用不能時間一覧
##剣士
scoreboard players set $1101 Interval 30
scoreboard players set $1102 Interval 20
scoreboard players set $1103 Interval 0
scoreboard players set $1104 Interval 0
scoreboard players set $1105 Interval 0
scoreboard players set $1106 Interval 40
scoreboard players set $1107 Interval 0
scoreboard players set $1201 Interval 60
scoreboard players set $1202 Interval 240
scoreboard players set $1203 Interval 100
scoreboard players set $1204 Interval 140
scoreboard players set $1205 Interval 60
##忍者
scoreboard players set $2101 Interval 0
scoreboard players set $2102 Interval 0
scoreboard players set $2103 Interval 0
scoreboard players set $2104 Interval 0
scoreboard players set $2105 Interval 0
scoreboard players set $2106 Interval 0
scoreboard players set $2201 Interval 0
scoreboard players set $2202 Interval 40
scoreboard players set $2203 Interval 40
scoreboard players set $2204 Interval 100
scoreboard players set $2205 Interval 20
scoreboard players set $2206 Interval 160
scoreboard players set $2207 Interval 100
scoreboard players set $2208 Interval 0
scoreboard players set $2209 Interval 20
##狩人
scoreboard players set $3101 Interval 0
scoreboard players set $3102 Interval 20
scoreboard players set $3103 Interval 20
scoreboard players set $3104 Interval 0
scoreboard players set $3105 Interval 20
scoreboard players set $3106 Interval 100
scoreboard players set $3107 Interval 0
scoreboard players set $3201 Interval 0
scoreboard players set $3202 Interval 20
scoreboard players set $3203 Interval 20
scoreboard players set $3204 Interval 40
scoreboard players set $3205 Interval 40
scoreboard players set $3206 Interval 200
scoreboard players set $3207 Interval 200
scoreboard players set $3208 Interval 60
##白魔導士
scoreboard players set $4101 Interval 10
scoreboard players set $4102 Interval 0
scoreboard players set $4103 Interval 20
scoreboard players set $4104 Interval 80
scoreboard players set $4105 Interval 0
scoreboard players set $4201 Interval 60
scoreboard players set $4202 Interval 20
scoreboard players set $4203 Interval 0
scoreboard players set $4204 Interval 20
scoreboard players set $4205 Interval 200
scoreboard players set $4206 Interval 200
scoreboard players set $4207 Interval 10
##黒魔導士
scoreboard players set $5101 Interval 0
scoreboard players set $5102 Interval 0
scoreboard players set $5103 Interval 60
scoreboard players set $5104 Interval 60
scoreboard players set $5105 Interval 20
scoreboard players set $5106 Interval 0
scoreboard players set $5201 Interval 100
scoreboard players set $5202 Interval 100
scoreboard players set $5203 Interval 100
scoreboard players set $5204 Interval 100
scoreboard players set $5205 Interval 20
scoreboard players set $5206 Interval 20
scoreboard players set $5207 Interval 100
scoreboard players set $5208 Interval 100
scoreboard players set $5209 Interval 10
scoreboard players set $5210 Interval 10
##召喚士
scoreboard players set $6101 Interval 0
scoreboard players set $6102 Interval 20
scoreboard players set $6103 Interval 20
scoreboard players set $6104 Interval 20
scoreboard players set $6105 Interval 0
scoreboard players set $6106 Interval 40
scoreboard players set $6107 Interval 100
scoreboard players set $6108 Interval 20
scoreboard players set $6109 Interval 100
scoreboard players set $6110 Interval 0
scoreboard players set $6111 Interval 0
scoreboard players set $6201 Interval 0
scoreboard players set $6202 Interval 60
scoreboard players set $6203 Interval 0
scoreboard players set $6204 Interval 0
scoreboard players set $6205 Interval 60
scoreboard players set $6206 Interval 60
scoreboard players set $6207 Interval 0
scoreboard players set $6208 Interval 0
scoreboard players set $6209 Interval 60
##絡繰士
scoreboard players set $7101 Interval 10
scoreboard players set $7102 Interval 0
scoreboard players set $7103 Interval 0
scoreboard players set $7104 Interval 40
scoreboard players set $7105 Interval 0
scoreboard players set $7201 Interval 60
scoreboard players set $7202 Interval 0
scoreboard players set $7203 Interval 0
scoreboard players set $7204 Interval 60
scoreboard players set $7205 Interval 60
scoreboard players set $7206 Interval 100
scoreboard players set $7207 Interval 140
scoreboard players set $7208 Interval 100
scoreboard players set $7209 Interval 40
###共通
scoreboard players set $8101 Interval 0
scoreboard players set $8102 Interval 0
scoreboard players set $8201 Interval 10
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

###スコアボード表示設定
scoreboard objectives setdisplay sidebar MP
###チーム作成
team add NoCollision 衝突判定なし
team option NoCollision collisionRule never
team add Friendly 味方チーム
team option Friendly friendlyfire false
team option Friendly collisionRule never
team option Friendly color white
#team option Friendly prefix {"text":"☘","color":"green"}
#team option Friendly prefix {"text":"✿","color":"yellow"}
team option Friendly prefix {"text":"✦","color":"red"}
team option Friendly suffix {"text":"✦","color":"red"}
team join Friendly バースト
team add Enemy 敵チーム
team option Enemy friendlyfire false

###ボスバー作成
bossbar add enemy_health {"text":"HP","color":"green"}
bossbar set minecraft:enemy_health players
bossbar set minecraft:enemy_health style progress
bossbar set minecraft:enemy_health visible false

###ゲームルール系
setworldspawn 10 4 10


###エンティティ系
#$CloseAttack 1
#$CloseRangeAttack 2
#$LongAttack 3
#$LongRangeAttack 4
#$EffectAttack 5

#$Defense 6
#$HealthCure 7
#$EffectCure 8
#$MagicCure 9

#$Fly 10
#$Swim 11
#$Mobility 12

kill @e[tag=PupRecordEntity]

summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,DurationOnUse:0,Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air",Tags:[Initialized,PupRecordEntity,PuppetClose],CustomName:"[\"CloseAttack\"]"}
scoreboard players set @e[name=CloseAttack] PupRecordType 1
summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,DurationOnUse:0,Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air",Tags:[Initialized,PupRecordEntity,PuppetClose],CustomName:"[\"CloseRangeAttack\"]"}
scoreboard players set @e[name=CloseRangeAttack] PupRecordType 2
summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,DurationOnUse:0,Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air",Tags:[Initialized,PupRecordEntity,PuppetLong],CustomName:"[\"LongAttack\"]"}
scoreboard players set @e[name=LongAttack] PupRecordType 3
summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,DurationOnUse:0,Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air",Tags:[Initialized,PupRecordEntity,PuppetLong],CustomName:"[\"LongRangeAttack\"]"}
scoreboard players set @e[name=LongRangeAttack] PupRecordType 4
summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,DurationOnUse:0,Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air",Tags:[Initialized,PupRecordEntity,PuppetLong],CustomName:"[\"EffectAttack\"]"}
scoreboard players set @e[name=EffectAttack] PupRecordType 5

summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,DurationOnUse:0,Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air",Tags:[Initialized,PupRecordEntity],CustomName:"[\"Defense\"]"}
scoreboard players set @e[name=Defense] PupRecordType 6
summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,DurationOnUse:0,Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air",Tags:[Initialized,PupRecordEntity],CustomName:"[\"HealthCure\"]"}
scoreboard players set @e[name=HealthCure] PupRecordType 7
summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,DurationOnUse:0,Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air",Tags:[Initialized,PupRecordEntity],CustomName:"[\"EffectCure\"]"}
scoreboard players set @e[name=EffectCure] PupRecordType 8
summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,DurationOnUse:0,Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air",Tags:[Initialized,PupRecordEntity],CustomName:"[\"MagicCure\"]"}
scoreboard players set @e[name=MagicCure] PupRecordType 9

summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,DurationOnUse:0,Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air",Tags:[Initialized,PupRecordEntity,PuppetMove],CustomName:"[\"Fly\"]"}
scoreboard players set @e[name=Fly] PupRecordType 10
summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,DurationOnUse:0,Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air",Tags:[Initialized,PupRecordEntity,PuppetMove],CustomName:"[\"Swim\"]"}
scoreboard players set @e[name=Swim] PupRecordType 11
summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,DurationOnUse:0,Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air",Tags:[Initialized,PupRecordEntity,PuppetMove],CustomName:"[\"Mobility\"]"}
scoreboard players set @e[name=Mobility] PupRecordType 12

