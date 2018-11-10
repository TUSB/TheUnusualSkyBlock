##############################
### 初回ロード処理
##############################

###ステータスやトリガー
scoreboard objectives add HP health {"text":"HP"}
scoreboard objectives add MP dummy {"text":"MP"}
scoreboard objectives add MPMax dummy {"text":"MP最大値"}
scoreboard objectives add Armor armor {"text":"防御力"}
scoreboard objectives add HealthHealing dummy {"text":"HP回復量"}
scoreboard objectives add KillCount playerKillCount {"text":"討伐数"}
scoreboard objectives add TimeSinceDeath minecraft.custom:minecraft.time_since_death {"text":"生きている時間"}
scoreboard objectives add SneakTime minecraft.custom:minecraft.sneak_time {"text":"スニーク時間"}
scoreboard objectives add UseModeEgg minecraft.used:minecraft.polar_bear_spawn_egg {"text":"モードチェンジ使用"}
scoreboard objectives add UseSupportRed minecraft.used:minecraft.pig_spawn_egg {"text":"サポートエッグルビー使用"}
scoreboard objectives add UseSupportBlue minecraft.used:minecraft.drowned_spawn_egg {"text":"サポートエッグサファイア使用"}
scoreboard objectives add DroppedMode minecraft.dropped:minecraft.polar_bear_spawn_egg {"text":"モードチェンジドロップ"}
scoreboard objectives add DroppedRed minecraft.dropped:minecraft.pig_spawn_egg {"text":"サポートエッグルビードロップ"}
scoreboard objectives add DroppedBlue minecraft.dropped:minecraft.drowned_spawn_egg {"text":"サポートエッグルビードロップ"}
scoreboard objectives add UseSnowball minecraft.used:minecraft.snowball {"text":"雪玉使用"}
scoreboard objectives add UseBow minecraft.used:minecraft.bow {"text":"弓使用"}
scoreboard objectives add UseCarrotStick minecraft.used:minecraft.carrot_on_a_stick {"text":"人参棒使用"}
scoreboard objectives add UseArmorStand minecraft.used:minecraft.armor_stand {"text":"アーマースタンド使用"}
scoreboard objectives add SprintOneCm minecraft.custom:minecraft.sprint_one_cm {"text":"走った距離"}
scoreboard objectives add DamageDealt minecraft.custom:minecraft.damage_dealt {"text":"与えたダメージ量"}
scoreboard objectives add DamageTaken minecraft.custom:minecraft.damage_taken {"text":"受けたメージ量"}
scoreboard objectives add UseSplashPotion minecraft.used:minecraft.splash_potion {"text":"投擲ポーション使用"}
scoreboard objectives add UseLingerPotion minecraft.used:minecraft.lingering_potion {"text":"残留ポーション使用"}
scoreboard objectives add Jump minecraft.custom:minecraft.jump {"text":"ジャンプ"}
scoreboard objectives add Deaths minecraft.custom:minecraft.deaths {"text":"死亡"}
scoreboard objectives add LeaveGame minecraft.custom:minecraft.leave_game {"text":"ログインフラグ"}
scoreboard objectives add OpenEnderChest minecraft.custom:minecraft.open_enderchest {"text":"エンダーチェストを開いた回数"}
scoreboard objectives add FoodLevel food {"text":"満腹度"}
scoreboard objectives add LastFoodLevel dummy {"text":"直前満腹度"}
scoreboard objectives add Hunger dummy {"text":"死亡時調整満腹度"}
scoreboard objectives add UseMilkBucket minecraft.used:minecraft.milk_bucket {"text":"牛乳飲んだ"}
###変数や定数、カウンタ
scoreboard objectives add Global dummy {"text":"グローバル変数"}
scoreboard objectives add Decrementer dummy {"text":"減少カウンタ"}
scoreboard objectives add Const dummy {"text":"定数"}
scoreboard objectives add Count dummy {"text":"カウント"}
scoreboard objectives add Flag dummy {"text":"一時的フラグ"}
scoreboard objectives add DoomCount dummy {"text":"死の宣告カウント"}
scoreboard objectives add TorchCount dummy {"text":"トカルトトーチ消費カウント"}
scoreboard objectives add VirusCount dummy {"text":"病気カウント"}
scoreboard objectives add ConfuseCount dummy {"text":"混乱カウント"}
scoreboard objectives add TerrorLevel dummy {"text":"恐怖レベル"}
scoreboard objectives add TntCount dummy {"text":"トントカウント"}
scoreboard objectives add ResistEffects dummy {"text":"状態異常耐性"}
scoreboard objectives add ResistMin dummy {"text":"状態異常耐性下限"}
scoreboard objectives add ResistLock dummy {"text":"状態異常回避時ロック"}
scoreboard objectives add CharmCount dummy {"text":"魅了カウント"}
scoreboard objectives add BlinkCount dummy {"text":"幻影カウント"}
scoreboard objectives add BlinkTick dummy {"text":"残影tick"}
scoreboard objectives add GameTime dummy {"text":"ゲームタイム"}
scoreboard objectives add Settings dummy {"text":"設定"}
###ID系
scoreboard objectives add ID dummy {"text":"紐付けID"}
scoreboard objectives add Dimension dummy {"text":"ディメンション"}
###ジョブ別設定
scoreboard objectives add Job dummy {"text":"現在のジョブ"}
scoreboard objectives add Level dummy {"text":"レベル"}
scoreboard objectives add LevelKnight dummy {"text":"剣士のレベル"}
scoreboard objectives add LevelNinja dummy {"text":"忍者のレベル"}
scoreboard objectives add LevelHunter dummy {"text":"狩人のレベル"}
scoreboard objectives add LevelWhiteMage dummy {"text":"白魔導士のレベル"}
scoreboard objectives add LevelBlackMage dummy {"text":"黒魔導士のレベル"}
scoreboard objectives add LevelSummoner dummy {"text":"召喚士のレベル"}
scoreboard objectives add LevelPupMaster dummy {"text":"絡繰士のレベル"}
scoreboard objectives add SubLevel dummy {"text":"現在のジョブのサブレベル"}
scoreboard objectives add SubKnight dummy {"text":"剣士のサブレベル"}
scoreboard objectives add SubNinja dummy {"text":"忍者のサブレベル"}
scoreboard objectives add SubHunter dummy {"text":"狩人のサブレベル"}
scoreboard objectives add SubWhiteMage dummy {"text":"白魔導士のサブレベル"}
scoreboard objectives add SubBlackMage dummy {"text":"黒魔導士のサブレベル"}
scoreboard objectives add SubSummoner dummy {"text":"召喚士のサブレベル"}
scoreboard objectives add SubPupMaster dummy {"text":"絡繰士のサブレベル"}
###設定されたスキル
scoreboard objectives add Cost dummy {"text":"MPコスト一覧"}
scoreboard objectives add Interval dummy {"text":"スキル使用不能時間一覧"}
scoreboard objectives add ModeSkill dummy {"text":"現在のモードスキル"}
scoreboard objectives add ModeCost dummy {"text":"現在のモードスキルのコスト"}
scoreboard objectives add ModeInterval dummy {"text":"現在のモードスキルの発動無効時間"}
scoreboard objectives add ModeSkillRed dummy {"text":"モードスキルルビー"}
scoreboard objectives add ModeSkillBlue dummy {"text":"モードスキルサファイア"}
scoreboard objectives add ModeCostRed dummy {"text":"モードスキルルビーのコスト"}
scoreboard objectives add ModeCostBlue dummy {"text":"モードスキルサファイアのコスト"}
scoreboard objectives add ModeIntervalRed dummy {"text":"モードスキルルビーの発動無効時間"}
scoreboard objectives add ModeIntervalBlue dummy {"text":"モードスキルサファイアの発動無効時間"}
scoreboard objectives add SupportSkill dummy {"text":"発動中のサポートスキル"}
scoreboard objectives add SupportCost dummy {"text":"発動中のサポートスキルのコスト"}
scoreboard objectives add SupportInterval dummy {"text":"発動中のサポートスキルの発動無効時間"}
scoreboard objectives add SupportSkillRed dummy {"text":"サポートアクションルビー"}
scoreboard objectives add SupportSkillBlue dummy {"text":"サポートアクションファイア"}
scoreboard objectives add SupportCostRed dummy {"text":"サポートアクションルビーのコスト"}
scoreboard objectives add SupportCostBlue dummy {"text":"サポートアクションサファイアのコスト"}
scoreboard objectives add SupportIntRed dummy {"text":"サポートアクションルビーの発動無効時間"}
scoreboard objectives add SupportIntBlue dummy {"text":"サポートアクションサファイアの発動無効時間"}
scoreboard objectives add ShowSkillNo dummy {"text":"表示スキル番号"}
scoreboard objectives add ChangeModeRed trigger {"text":"モードルビー変更番号"}
scoreboard objectives add ChangeModeBlue trigger {"text":"モードサファイア変更番号"}
scoreboard objectives add ChangeSupRed trigger {"text":"サポートルビー変更番号"}
scoreboard objectives add ChangeSupBlue trigger {"text":"サポートサファイア変更番号"}
scoreboard objectives add ChangeLevel dummy {"text":"スキル変更時レベル上限"}
scoreboard objectives add ActiveSkill dummy {"text":"発動スキル"}
scoreboard objectives add ActiveCost dummy {"text":"発動スキルコスト"}
scoreboard objectives add ActiveInterval dummy {"text":"発動スキル発動無効時間"}
###スキル共通系
scoreboard objectives add MobHPMax dummy {"text":"モブ最大体力"}
scoreboard objectives add SkillInterval dummy {"text":"スキル使用不可tick数"}
scoreboard objectives add MPHealingWait dummy {"text":"MP回復ウェイト"}
scoreboard objectives add MPConsumption dummy {"text":"MP消費量"}
scoreboard objectives add Damage dummy {"text":"モブ付与ダメージ"}
scoreboard objectives add StoredDamage dummy {"text":"累積型ダメージ"}
scoreboard objectives add BurstTrigger dummy {"text":"バースト発動カウント"}
scoreboard objectives add ChangeSkillLimit dummy {"text":"スキル変更不可時間"}
scoreboard objectives add ProjectileSkill dummy {"text":"飛翔物付与スキル"}
scoreboard objectives add SkillAttribute dummy {"text":"スキル付加情報"}
scoreboard objectives add CarrotContinue dummy {"text":"人参棒連続カウント"}
scoreboard objectives add CarrotTick dummy {"text":"人参棒使用LastTick"}
scoreboard objectives add CritProbability dummy {"text":"クリティカルヒット確率"}
scoreboard objectives add CritRate dummy {"text":"クリティカルヒットダメージレート"}
###スキル個別系
scoreboard objectives add FalconDamage dummy {"text":"はやぶさ斬り用ダメージ保存値"}
scoreboard objectives add FalconHP dummy {"text":"はやぶさ斬り用敵HP"}
scoreboard objectives add IronWill dummy {"text":"アイアンウィル残りtick数"}
scoreboard objectives add DivineShield dummy {"text":"ディバインシールドダメージ量"}
scoreboard objectives add OdinSlash dummy {"text":"斬鉄剣発動タイミング調整"}
scoreboard objectives add TacticalHeal dummy {"text":"タクティカルヒール持続確率"}
scoreboard objectives add Aisatsu dummy {"text":"アイサツ消費MP減少効果量"}
scoreboard objectives add WaterAffinity dummy {"text":"ウォータアフィニティ"}
scoreboard objectives add FireAffinity dummy {"text":"ファイアアフィニティ"}
scoreboard objectives add Choyaku dummy {"text":"跳躍跳躍力"}
scoreboard objectives add ChoyakuTrigger dummy {"text":"跳躍発動タイミング調整"}
scoreboard objectives add Mokuso dummy {"text":"黙想レベル"}
scoreboard objectives add Issen dummy {"text":"一閃継続tick数"}
scoreboard objectives add Isukumi dummy {"text":"居縮継続秒数"}
scoreboard objectives add Kaishaku dummy {"text":"介錯残りtick数"}
scoreboard objectives add Kazakiri dummy {"text":"風切残り秒数"}
scoreboard objectives add CookingSkill dummy {"text":"調理スキル"}
scoreboard objectives add PiercingAim dummy {"text":"ピアッシングエイム回数"}
scoreboard objectives add BlastSpark dummy {"text":"ブラストスパーク継続tick数"}
scoreboard objectives add EnergySave dummy {"text":"エナジーセーブ消費MP減少効果量"}
scoreboard objectives add RaderVision dummy {"text":"レーダーヴィジョン残りtick数"}
scoreboard objectives add PhotonicTick dummy {"text":"フォトニックレーザー演出用タイマー"}
scoreboard objectives add ClericKnowledge dummy {"text":"クレリックナレッジ"}
scoreboard objectives add PillarCount dummy {"text":"セイクリッドピラーダメージ付与上限"}
scoreboard objectives add PillarDamage dummy {"text":"セイクリッドピラーダメージ"}
scoreboard objectives add EclipseRadius dummy {"text":"エクリプスフレイム半径"}
scoreboard objectives add DarkSwamp dummy {"text":"ダークスワンプ回数"}
scoreboard objectives add LightningBlow dummy {"text":"ライトニングブロー威力"}
scoreboard objectives add FillSize dummy {"text":"フィールサイズ"}
scoreboard objectives add PetitBlack dummy {"text":"ぷちブラック残りtick"}
scoreboard objectives add MultiThread dummy {"text":"マルチスレッド"}
scoreboard objectives add HomeX dummy {"text":"ホームポイントX座標"}
scoreboard objectives add HomeY dummy {"text":"ホームポイントY座標"}
scoreboard objectives add HomeZ dummy {"text":"ホームポイントZ座標"}
###からくり士スキル系
scoreboard objectives add PuppetScore dummy {"text":"パペット制御用スコア"}
scoreboard objectives add PupRecordLevel dummy {"text":"レコード特性のレベル"}
scoreboard objectives add PupRecordType dummy {"text":"レコードの種類"}
scoreboard objectives add PupRecordSlot dummy {"text":"レコードのスロット"}
scoreboard objectives add PupSwimmability dummy {"text":"パペット水中機動力"}
scoreboard objectives add PupFlyability dummy {"text":"パペット空中機動力"}
scoreboard objectives add PupMobility dummy {"text":"パペット陸上機動力"}
scoreboard objectives add PupCurrentSlot dummy {"text":"パペット行動スロット"}
scoreboard objectives add PuppetWait dummy {"text":"パペット行動ウェイト"}
###クエスト系スコア
scoreboard objectives add QuestClick trigger {"text":"クエスト一覧クリック検知用"}
scoreboard objectives add QuestReceive trigger {"text":"クエストを受注するか"}
scoreboard objectives add QuestReport trigger {"text":"クエストを報告するか"}
scoreboard objectives add QuestReceiveID dummy {"text":"受注対象のクエストID"}
scoreboard objectives add QuestReportID dummy {"text":"報告対象のクエストID"}
scoreboard objectives add Quest1 dummy {"text":"受注中のクエスト1"}
scoreboard objectives add Quest2 dummy {"text":"受注中のクエスト2"}
scoreboard objectives add Quest3 dummy {"text":"受注中のクエスト3"}
scoreboard objectives add Quest4 dummy {"text":"受注中のクエスト4"}
scoreboard objectives add Quest5 dummy {"text":"受注中のクエスト5"}
scoreboard objectives add QuestState dummy {"text":"クエスト状況リスト"}
###その他スコア
scoreboard objectives add ProjectileLife dummy {"text":"飛翔物生存時間"}
scoreboard objectives add MotionX dummy {"text":"モーションX保存"}
scoreboard objectives add MotionY dummy {"text":"モーションY保存"}
scoreboard objectives add MotionZ dummy {"text":"モーションZ保存"}
scoreboard objectives add SkillHurtTime dummy {"text":"スキルダメージ無効果時間"}
scoreboard objectives add EnemySkillSpan dummy {"text":"敵スキル使用間隔"}
###無限チェスト（いろは丸）
function item_manager:inf_chest/init

###定数
scoreboard players set $-3 Const -3
scoreboard players set $-2 Const -2
scoreboard players set $-1 Const -1
scoreboard players set $0 Const 0
scoreboard players set $1 Const 1
scoreboard players set $2 Const 2
scoreboard players set $3 Const 3
scoreboard players set $4 Const 4
scoreboard players set $5 Const 5
scoreboard players set $6 Const 6
scoreboard players set $7 Const 7
scoreboard players set $8 Const 8
scoreboard players set $9 Const 9
scoreboard players set $10 Const 10
scoreboard players set $11 Const 11
scoreboard players set $12 Const 12
scoreboard players set $13 Const 13
scoreboard players set $14 Const 14
scoreboard players set $15 Const 15
scoreboard players set $16 Const 16
scoreboard players set $17 Const 17
scoreboard players set $18 Const 18
scoreboard players set $19 Const 19
scoreboard players set $20 Const 20
scoreboard players set $21 Const 21
scoreboard players set $22 Const 22
scoreboard players set $23 Const 23
scoreboard players set $24 Const 24
scoreboard players set $25 Const 25
scoreboard players set $26 Const 26
scoreboard players set $27 Const 27
scoreboard players set $28 Const 28
scoreboard players set $29 Const 29
scoreboard players set $30 Const 30
scoreboard players set $31 Const 31
scoreboard players set $32 Const 32
scoreboard players set $33 Const 33
scoreboard players set $34 Const 34
scoreboard players set $35 Const 35
scoreboard players set $36 Const 36
scoreboard players set $37 Const 37
scoreboard players set $38 Const 38
scoreboard players set $39 Const 39
scoreboard players set $40 Const 40
scoreboard players set $41 Const 41
scoreboard players set $42 Const 42
scoreboard players set $43 Const 43
scoreboard players set $44 Const 44
scoreboard players set $45 Const 45
scoreboard players set $46 Const 46
scoreboard players set $47 Const 47
scoreboard players set $48 Const 48
scoreboard players set $49 Const 49
scoreboard players set $50 Const 50
scoreboard players set $60 Const 60
scoreboard players set $70 Const 70
scoreboard players set $80 Const 80
scoreboard players set $90 Const 90
scoreboard players set $100 Const 100
scoreboard players set $110 Const 110
scoreboard players set $120 Const 120
scoreboard players set $130 Const 130
scoreboard players set $140 Const 140
scoreboard players set $150 Const 150
scoreboard players set $200 Const 200
scoreboard players set $240 Const 240
scoreboard players set $250 Const 250
scoreboard players set $300 Const 300
scoreboard players set $315 Const 315
scoreboard players set $400 Const 400
scoreboard players set $450 Const 450
scoreboard players set $500 Const 500
scoreboard players set $600 Const 600
scoreboard players set $700 Const 700
scoreboard players set $800 Const 800
scoreboard players set $840 Const 840
scoreboard players set $900 Const 900
scoreboard players set $1000 Const 1000
scoreboard players set $1200 Const 1200
scoreboard players set $1500 Const 1500
scoreboard players set $2000 Const 2000
scoreboard players set $3600 Const 3600
scoreboard players set $4000 Const 4000
scoreboard players set $7000 Const 7000
scoreboard players set $8500 Const 8500
scoreboard players set $10000 Const 10000
scoreboard players set $15000 Const 15000
scoreboard players set $20000 Const 20000
scoreboard players set $25000 Const 25000
scoreboard players set $30000 Const 30000
scoreboard players set $40000 Const 40000
scoreboard players set $50000 Const 50000
scoreboard players set $60000 Const 60000
scoreboard players set $70000 Const 70000
scoreboard players set $99999 Const 99999
scoreboard players set $100000 Const 100000
scoreboard players set $112000 Const 112000
scoreboard players set $120000 Const 120000
scoreboard players set $150000 Const 150000
scoreboard players set $185000 Const 185000
scoreboard players set $200000 Const 200000
scoreboard players set $240000 Const 240000
scoreboard players set $250000 Const 250000
scoreboard players set $300000 Const 300000
scoreboard players set $350000 Const 350000
scoreboard players set $360000 Const 360000
scoreboard players set $400000 Const 400000
scoreboard players set $450000 Const 450000
scoreboard players set $500000 Const 500000
scoreboard players set $600000 Const 600000
scoreboard players set $700000 Const 700000
scoreboard players set $900000 Const 900000
scoreboard players set $1000000 Const 1000000
scoreboard players set $1400000 Const 1400000
scoreboard players set $1500000 Const 1500000
scoreboard players set $1750000 Const 1750000
scoreboard players set $1600000 Const 1600000
scoreboard players set $2000000 Const 2000000
scoreboard players set $3000000 Const 3000000
scoreboard players set $MWCBase Const 65536
scoreboard players set $MWCMultiplier Const 31743
###MP一覧
##剣士
scoreboard players set $1101 Cost 15
scoreboard players set $1102 Cost 20
scoreboard players set $1103 Cost 10
scoreboard players set $1104 Cost 5
scoreboard players set $1105 Cost 10
scoreboard players set $1106 Cost 10
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
scoreboard players set $2104 Cost 50
scoreboard players set $2105 Cost 15
scoreboard players set $2106 Cost 0
scoreboard players set $2201 Cost 10
scoreboard players set $2202 Cost 20
scoreboard players set $2203 Cost 20
scoreboard players set $2204 Cost 20
scoreboard players set $2205 Cost 10
scoreboard players set $2206 Cost 40
scoreboard players set $2207 Cost 30
scoreboard players set $2208 Cost 80
scoreboard players set $2209 Cost 30
##狩人
scoreboard players set $3101 Cost 5
scoreboard players set $3102 Cost 15
scoreboard players set $3103 Cost 15
scoreboard players set $3104 Cost 5
scoreboard players set $3105 Cost 15
scoreboard players set $3106 Cost 25
scoreboard players set $3107 Cost 100
scoreboard players set $3201 Cost 10
scoreboard players set $3202 Cost 25
scoreboard players set $3203 Cost 5
scoreboard players set $3204 Cost 25
scoreboard players set $3205 Cost 30
scoreboard players set $3206 Cost 50
scoreboard players set $3207 Cost 10
scoreboard players set $3208 Cost 25
##白魔導士
scoreboard players set $4101 Cost 5
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
scoreboard players set $5105 Cost 80
scoreboard players set $5106 Cost 100
scoreboard players set $5201 Cost 60
scoreboard players set $5202 Cost 60
scoreboard players set $5203 Cost 60
scoreboard players set $5204 Cost 60
scoreboard players set $5205 Cost 60
scoreboard players set $5206 Cost 40
scoreboard players set $5207 Cost 50
scoreboard players set $5208 Cost 60
scoreboard players set $5209 Cost 25
scoreboard players set $5210 Cost 70
##召喚士
scoreboard players set $6101 Cost 20
scoreboard players set $6102 Cost 10
scoreboard players set $6103 Cost 20
scoreboard players set $6104 Cost 20
scoreboard players set $6105 Cost 40
scoreboard players set $6106 Cost 40
scoreboard players set $6107 Cost 20
scoreboard players set $6108 Cost 10
scoreboard players set $6109 Cost 20
scoreboard players set $6110 Cost 40
scoreboard players set $6111 Cost 100
scoreboard players set $6201 Cost 20
scoreboard players set $6202 Cost 20
scoreboard players set $6203 Cost 10
scoreboard players set $6204 Cost 30
scoreboard players set $6205 Cost 20
scoreboard players set $6206 Cost 20
scoreboard players set $6207 Cost 40
scoreboard players set $6208 Cost 50
scoreboard players set $6209 Cost 20
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
scoreboard players set $8102 Cost 5
scoreboard players set $8201 Cost 5
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
scoreboard players set $1204 Interval 40
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
scoreboard players set $3202 Interval 60
scoreboard players set $3203 Interval 100
scoreboard players set $3204 Interval 60
scoreboard players set $3205 Interval 40
scoreboard players set $3206 Interval 200
scoreboard players set $3207 Interval 60
scoreboard players set $3208 Interval 60
##白魔導士
scoreboard players set $4101 Interval 0
scoreboard players set $4102 Interval 0
scoreboard players set $4103 Interval 20
scoreboard players set $4104 Interval 80
scoreboard players set $4105 Interval 0
scoreboard players set $4201 Interval 60
scoreboard players set $4202 Interval 60
scoreboard players set $4203 Interval 60
scoreboard players set $4204 Interval 60
scoreboard players set $4205 Interval 60
scoreboard players set $4206 Interval 60
scoreboard players set $4207 Interval 60
##黒魔導士
scoreboard players set $5101 Interval 0
scoreboard players set $5102 Interval 0
scoreboard players set $5103 Interval 60
scoreboard players set $5104 Interval 60
scoreboard players set $5105 Interval 60
scoreboard players set $5106 Interval 0
scoreboard players set $5201 Interval 100
scoreboard players set $5202 Interval 100
scoreboard players set $5203 Interval 60
scoreboard players set $5204 Interval 20
scoreboard players set $5205 Interval 100
scoreboard players set $5206 Interval 20
scoreboard players set $5207 Interval 20
scoreboard players set $5208 Interval 100
scoreboard players set $5209 Interval 100
scoreboard players set $5210 Interval 10
##召喚士
scoreboard players set $6101 Interval 0
scoreboard players set $6102 Interval 0
scoreboard players set $6103 Interval 20
scoreboard players set $6104 Interval 20
scoreboard players set $6105 Interval 60
scoreboard players set $6106 Interval 60
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
scoreboard players set $8102 Interval 10
scoreboard players set $8201 Interval 0
###バースト初期化
scoreboard players set #Aura MP 10000
###イベントタイマー初期化
scoreboard players set $EventTimer Count 100
###乱数初期化
summon minecraft:area_effect_cloud ~ ~ ~ {Age:0,WaitTime:1,ReapplicationDelay:0,Duration:0,Tags:[Initialized]}
execute store result score $RndMWC Global run data get entity @e[distance=..1,type=minecraft:area_effect_cloud,limit=1] UUIDMost 0.0000000001
execute store result score $RndMWCCarry Global run data get entity @e[distance=..1,type=minecraft:area_effect_cloud,limit=1] UUIDLeast 0.0000000001
execute if score $RndMWC Global matches ..0 run scoreboard players operation $RndMWC Global *= $-1 Const
execute if score $RndMWCCarry Global matches ..0 run scoreboard players operation $RndMWCCarry Global *= $-1 Const
scoreboard players operation $RndMWC Global %= $MWCBase Const
scoreboard players operation $RndMWCCarry Global /= $MWCBase Const
###クエスト状況初期化(未開放:0, 開放済:1, 達成済:2)
scoreboard players set $1 QuestState 1

###スコアボード表示設定
scoreboard objectives setdisplay sidebar MP
scoreboard objectives setdisplay list Level
###チーム作成
team add NoCollision {"text":"衝突判定なし"}
team modify NoCollision collisionRule never
team add Friendly {"text":"味方チーム"}
team modify Friendly friendlyFire false
team modify Friendly collisionRule never
team modify Friendly color white
#team modify Friendly prefix {"text":"☘","color":"green"}
#team modify Friendly prefix {"text":"✿","color":"yellow"}
team modify Friendly prefix {"text":"✦","color":"red"}
team modify Friendly suffix {"text":"✦","color":"red"}
team join Friendly バースト
team add Enemy {"text":"敵チーム"}
team modify Enemy color white
team modify Enemy friendlyFire false
###カラーチーム作成
team add Red {"text":"赤色チーム"}
team modify Red color red
team add Light_Purple {"text":"赤紫色チーム"}
team modify Light_Purple color light_purple
team add Gold {"text":"黄色チーム"}
team modify Gold color gold

###ボスバー作成
bossbar add enemy_health {"text":"HP","color":"green"}
bossbar set minecraft:enemy_health players
bossbar set minecraft:enemy_health style progress
bossbar set minecraft:enemy_health visible false

###ゲームルール系
setworldspawn 0 4 0


###エンティティ系

kill 0-0-FF-0-FF
summon minecraft:area_effect_cloud 0.0 0.0 0.0 {Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air",UUIDMost:255l,UUIDLeast:255l,CustomName:"[\"羅針盤\"]"}

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

summon minecraft:area_effect_cloud 0.0 10.0 0.0 {Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air",Tags:[Initialized,PupRecordEntity,PuppetClose],CustomName:"[\"CloseAttack\"]"}
scoreboard players set @e[name=CloseAttack] PupRecordType 1
summon minecraft:area_effect_cloud 0.0 10.0 0.0 {Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air",Tags:[Initialized,PupRecordEntity,PuppetClose],CustomName:"[\"CloseRangeAttack\"]"}
scoreboard players set @e[name=CloseRangeAttack] PupRecordType 2
summon minecraft:area_effect_cloud 0.0 10.0 0.0 {Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air",Tags:[Initialized,PupRecordEntity,PuppetLong],CustomName:"[\"LongAttack\"]"}
scoreboard players set @e[name=LongAttack] PupRecordType 3
summon minecraft:area_effect_cloud 0.0 10.0 0.0 {Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air",Tags:[Initialized,PupRecordEntity,PuppetLong],CustomName:"[\"LongRangeAttack\"]"}
scoreboard players set @e[name=LongRangeAttack] PupRecordType 4
summon minecraft:area_effect_cloud 0.0 10.0 0.0 {Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air",Tags:[Initialized,PupRecordEntity,PuppetLong],CustomName:"[\"EffectAttack\"]"}
scoreboard players set @e[name=EffectAttack] PupRecordType 5

summon minecraft:area_effect_cloud 0.0 10.0 0.0 {Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air",Tags:[Initialized,PupRecordEntity],CustomName:"[\"Defense\"]"}
scoreboard players set @e[name=Defense] PupRecordType 6
summon minecraft:area_effect_cloud 0.0 10.0 0.0 {Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air",Tags:[Initialized,PupRecordEntity],CustomName:"[\"HealthCure\"]"}
scoreboard players set @e[name=HealthCure] PupRecordType 7
summon minecraft:area_effect_cloud 0.0 10.0 0.0 {Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air",Tags:[Initialized,PupRecordEntity],CustomName:"[\"EffectCure\"]"}
scoreboard players set @e[name=EffectCure] PupRecordType 8
summon minecraft:area_effect_cloud 0.0 10.0 0.0 {Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air",Tags:[Initialized,PupRecordEntity],CustomName:"[\"MagicCure\"]"}
scoreboard players set @e[name=MagicCure] PupRecordType 9

summon minecraft:area_effect_cloud 0.0 10.0 0.0 {Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air",Tags:[Initialized,PupRecordEntity,PuppetMove],CustomName:"[\"Fly\"]"}
scoreboard players set @e[name=Fly] PupRecordType 10
summon minecraft:area_effect_cloud 0.0 10.0 0.0 {Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air",Tags:[Initialized,PupRecordEntity,PuppetMove],CustomName:"[\"Swim\"]"}
scoreboard players set @e[name=Swim] PupRecordType 11
summon minecraft:area_effect_cloud 0.0 10.0 0.0 {Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air",Tags:[Initialized,PupRecordEntity,PuppetMove],CustomName:"[\"Mobility\"]"}
scoreboard players set @e[name=Mobility] PupRecordType 12

