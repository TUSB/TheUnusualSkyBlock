##############################
### 初回ロード処理
##############################

###デバッグモード
# リリースする際は必ずオフにすること
data modify storage main: debug set value 1b

### Git情報(値はデバッグサーバ側で置き換え文字置換される)
data modify storage main: Repository set value {CommitHash:"__GIT_COMMIT_HASH__",CommitHashShort:"__GIT_COMMIT_HASH_SHORT__",Branch:"__GIT_BRANCH__"}

###バージョン
function settings:version_update/check/

###ゲームルール
execute unless data storage main: {debug:1b} run time set 14000
function settings:main/define/gamerule

###ステータス
scoreboard objectives add Level dummy {"text":"レベル"}
scoreboard objectives add ElementFire dummy {"text":"炎属性値"}
scoreboard objectives add ElementIce dummy {"text":"氷属性値"}
scoreboard objectives add ElementLightning dummy {"text":"雷属性値"}
scoreboard objectives add ElementLight dummy {"text":"光属性値"}
scoreboard objectives add ElementDark dummy {"text":"闇属性値"}
scoreboard objectives add HP dummy {"text":"HP"}
scoreboard objectives add HPMax dummy {"text":"HP最大値"}
scoreboard objectives add MP dummy {"text":"MP"}
scoreboard objectives add MPMax dummy {"text":"MP最大値"}
scoreboard objectives add Attack dummy {"text":"物理攻撃力"}
scoreboard objectives add Defense dummy {"text":"物理防御力"}
scoreboard objectives add SpecialAttack dummy {"text":"魔法攻撃力"}
scoreboard objectives add SpecialDefense dummy {"text":"魔法防御力"}
scoreboard objectives add BaseTotal dummy {"text":"合計基礎ポイント"}
scoreboard objectives add GrowTotal dummy {"text":"合計成長ポイント"}
scoreboard objectives add Damage dummy {"text":"ダメージ"}
scoreboard objectives add HealthHealing dummy {"text":"HP回復量"}
scoreboard objectives add Age minecraft.custom:minecraft.time_since_death {"text":"生きている時間"}
scoreboard objectives add ParticleDenom dummy {"text":"パーティクル表示割合"}
scoreboard objectives add BreakSpawner dummy {"text":"スポナー破壊数"}
scoreboard objectives add FoodLevel food {"text":"満腹度"}
scoreboard objectives add LastFoodLevel dummy {"text":"直前満腹度"}
scoreboard objectives add Luck dummy {"text":"幸運"}
scoreboard objectives add StoredDamage dummy {"text":"累積ダメージ"}
scoreboard objectives add Health health {"text":"HP"}
scoreboard objectives setdisplay below_name Health
scoreboard objectives add NativeFlag dummy {"text":"常時実行フラグ"}

###アイテム
scoreboard objectives add EnchantLevel dummy {"text":"エンチャントレベル"}

###変数や定数、カウンタ
scoreboard objectives add _ dummy {"text":"一時変数"}
scoreboard objectives add Ret dummy {"text":"戻り値用一時変数"}
scoreboard objectives add ResistEffects dummy {"text":"状態異常耐性"}
scoreboard objectives add ResistLock dummy {"text":"状態異常回避時ロック"}
scoreboard objectives add PaleLevel dummy {"text":"ペイルレベル"}
scoreboard objectives add ConfuseCount dummy {"text":"混乱カウント"}
scoreboard objectives add DoomCount dummy {"text":"死の宣告カウント"}
scoreboard objectives add PalsyLevel dummy {"text":"麻痺レベル"}
scoreboard objectives add TntCount dummy {"text":"トントカウント"}
scoreboard objectives add VirusCount dummy {"text":"病気カウント"}
scoreboard objectives add FreezeTimer dummy {"text":"凍結タイマー"}
scoreboard objectives add BurnCount dummy {"text":"火だるまカウント"}
scoreboard objectives add GameTime dummy {"text":"ゲームタイム"}
scoreboard objectives add ProjectileTime minecraft.custom:minecraft.play_time {"text":"投射物ヒットタイマー"}
scoreboard objectives add ShieldUsingTick dummy {"text":"盾を使用したtick"}

###計算、乱数
scoreboard objectives add Calc dummy {"text": "計算用"}
scoreboard objectives add Random dummy {"text": "乱数用"}
scoreboard objectives add TitleOffset dummy {"text":"タイトル表示オフセット"}
scoreboard objectives add ArrowRotation dummy {"text":"矢の向き"}
scoreboard objectives add ProjectileLife dummy {"text":"飛翔物生存時間"}

###ジョブ系
scoreboard objectives add Job dummy {"text": "現在のジョブ"}
scoreboard objectives add Exp dummy {"text":"ジョブ経験値"}
scoreboard objectives add AllExp dummy {"text": "総獲得経験値"}
scoreboard objectives add RequiredExp dummy {"text": "ジョブ必要経験値"}
scoreboard objectives add SubLevel dummy {"text":"現在のジョブのサブレベル"}
scoreboard objectives add ElementDamageAdd dummy {"text":"属性攻撃力追加"}
scoreboard objectives add ResistMin dummy {"text":"状態異常耐性下限"}
scoreboard objectives add AuraRate dummy {"text":"オーラ延長割合"}
scoreboard objectives add Interval dummy {"text":"スキル発動無効時間"}
scoreboard objectives add IntervalRate dummy {"text":"スキル発動無効時間短縮割合"}
scoreboard objectives add MPCostRate dummy {"text":"MP消費軽減割合"}
scoreboard objectives add KnightLv dummy {"text": "剣士スキルレベル"}
scoreboard objectives add NinjaLv dummy {"text": "忍者スキルレベル"}
scoreboard objectives add HunterLv dummy {"text": "狩人スキルレベル"}
scoreboard objectives add WhiteMageLv dummy {"text": "白魔導士スキルレベル"}
scoreboard objectives add BlackMageLv dummy {"text": "黒魔導士スキルレベル"}
scoreboard objectives add SummonerLv dummy {"text": "召喚士スキルレベル"}
scoreboard objectives add PuppetMasterLv dummy {"text": "絡繰士スキルレベル"}
scoreboard objectives add ThiefLv dummy {"text": "怪盗スキルレベル"}
scoreboard objectives add CanChangeJobFlag dummy {"text":"常時職業変更可能フラグ"}
scoreboard objectives add ChangeJobLock dummy {"text":"職業変更制限"}

###スキル
scoreboard objectives add MPHealingWait dummy {"text":"MP回復ウェイト"}
scoreboard objectives add MPAcceleration dummy {"text":"MP回復加速量"}
scoreboard objectives add MPConsumption dummy {"text":"MP回復量"}
scoreboard objectives add TrackingID dummy {"text":"追尾スキル同期ID"}
scoreboard objectives add SkillShortcut dummy {"text":"スキル設定中tick"}
scoreboard objectives add Burst dummy {"text":"バースト管理"}
#剣士
scoreboard objectives add FalconSlashTimer dummy {"text":"はやぶさ斬り遅延タイマー"}
scoreboard objectives add IronWill dummy {"text":"アイアンウィル残りtick数"}
scoreboard objectives add RagingDamage dummy {"text":"猛火斬ダメージ"}
scoreboard objectives add OdinSlash dummy {"text":"斬鉄剣発動タイミング調整"}
scoreboard objectives add ReactiveLevel dummy {"text":"リアクティブヒールレベル"}
scoreboard objectives add TacticalHeal dummy {"text":"タクティカルヒール持続確率"}
#忍者
scoreboard objectives add Choyaku dummy {"text":"跳躍跳躍力"}
scoreboard objectives add ChoyakuLevel dummy {"text":"跳躍レベル"}
scoreboard objectives add Aisatsu dummy {"text":"アイサツ消費MP減少効果量"}
scoreboard objectives add Katon dummy {"text":"火遁"}
scoreboard objectives add Kazakiri dummy {"text":"風切"}
scoreboard objectives add Mokuso dummy {"text":"黙想"}
scoreboard objectives add Suiton dummy {"text":"水遁"}
scoreboard objectives add Issen dummy {"text":"一閃継続tick数"}
scoreboard objectives add Isukumi dummy {"text":"居縮継続秒数"}
scoreboard objectives add Kaishaku dummy {"text":"介錯残りtick数"}
scoreboard objectives add SayonaraLevel dummy {"text":"サヨナラレベル"}
scoreboard objectives add TsuremaiLevel dummy {"text":"連舞レベル"}
#狩人
scoreboard objectives add PiercingAim dummy {"text":"ピアッシングエイム継続秒数"}
scoreboard objectives add RaderVision dummy {"text":"レーダーヴィジョン継続tick数"}
scoreboard objectives add WildCooking dummy {"text":"ワイルドクッキング継続秒数"}
scoreboard objectives add WildHealing dummy {"text":"ワイルドヒーリングレベル"}
scoreboard objectives add EnergySave dummy {"text":"エナジーセーブ消費MP減少効果量"}
scoreboard objectives add BlastSpark dummy {"text":"ブラストスパーク継続tick数"}
#黒魔導士
scoreboard objectives add EclipseRadius dummy {"text":"エクリプスフレイム半径"}
scoreboard objectives add LightningBlow dummy {"text":"ライトニングブロー威力"}
scoreboard objectives add BlitzManover dummy {"text":"ブリッツマニューバ残りtick数"}
scoreboard objectives add RockNRoll dummy {"text":"ロックンロール残り推定時間"}
scoreboard objectives add Sleepga dummy {"text":"スリプガ継続秒数"}
scoreboard objectives add ManaRefresh dummy {"text":"マナリフレッシュ残りミリ秒＆レベル"}
scoreboard objectives add MagicShield dummy {"text":"マジックシールド残りtick＆発動フラグ"}
scoreboard objectives add DarkSwamp dummy {"text":"ダークスワンプ回数"}
scoreboard objectives add WindWall dummy {"text":"ウィンドウォール残りtick＆レベル"}
scoreboard objectives add HomePoint trigger {"text":"ホームポイント設定トリガー"}
#召喚士
scoreboard objectives add FillSize dummy {"text":"フィールサイズ"}
#共通
scoreboard objectives add Weakness dummy {"text":"ウィークペイント効果時間"}
scoreboard objectives add SkyWalk dummy {"text":"スカイウォーク"}
scoreboard objectives add RestoreItem trigger {"text":"リスト・アイテム処理選択"}
scoreboard objectives add SuspiciousPowderTime dummy {"text":"怪しい粉継続秒数"}
scoreboard objectives add SuspiciousPowderToken dummy {"text":"怪しい粉消費MP量"}
scoreboard objectives add BurnDebaria dummy {"text":"バーンデバリア効果時間"}
scoreboard objectives add FreezeDebaria dummy {"text":"フリーズデバリア効果時間"}
scoreboard objectives add ParalysisDebaria dummy {"text":"パラライズデバリア効果時間"}
scoreboard objectives add ConfusionDebaria dummy {"text":"コンフュージョンデバリア効果時間"}
scoreboard objectives add DiseaseDebaria dummy {"text":"ディズィーズデバリア効果時間"}
scoreboard objectives add DoomDebaria dummy {"text":"ドゥームデバリア効果時間"}

###バースト ボスバー
bossbar add skill:burst {"translate":"バーストゲージ","italic":true,"bold":true}
bossbar set skill:burst color white
bossbar set skill:burst visible false
bossbar set skill:burst style notched_6

###乱数初期化
summon minecraft:area_effect_cloud ~ ~ ~ {Age:0,WaitTime:1,ReapplicationDelay:0,Duration:0,Tags:[Initialized]}
execute store result score $RndMWC Random run data get entity @e[distance=..1,type=minecraft:area_effect_cloud,limit=1] UUID[0] 0.01
execute store result score $RndMWCCarry Random run data get entity @e[distance=..1,type=minecraft:area_effect_cloud,limit=1] UUID[1] 0.01
scoreboard players set _ _ 65536
scoreboard players operation $RndMWC Random %= _ _
scoreboard players operation $RndMWCCarry Random /= _ _

###総獲得経験値量初期化
scoreboard players add $World AllExp 0
###特殊デバフ名初期化
function settings:effects/too_bad_effects

###コントロールエリア設定
execute in area:control_area run forceload add 0 0
schedule function area:system/control_area/system_block 1s
execute in area:control_area positioned 5 5 5 run function calc:geometry/tp_00000
execute in area:control_area positioned 5 5 5 run function calc:geometry/tp_00001
execute in area:control_area positioned 5 5 5 run function calc:geometry/tp_00002
execute in area:control_area positioned 5 10 5 run summon bat ~ ~ ~ {Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Silent:1b,BatFlags:1b,UUID:[I;0,0,0,3]}

###トリガー
scoreboard objectives add UseSnowball minecraft.used:minecraft.snowball {"text": "雪玉使用"}
scoreboard objectives add UseBow minecraft.used:minecraft.bow {"text": "弓使用"}
scoreboard objectives add UseCrossbow minecraft.used:minecraft.crossbow {"text": "クロスボウ使用"}
scoreboard objectives add UseTrident minecraft.used:minecraft.trident {"text": "トライデント使用"}
scoreboard objectives add UseCarrotStick minecraft.used:minecraft.carrot_on_a_stick {"text": "人参棒使用"}
scoreboard objectives add UseFungusStick minecraft.used:minecraft.warped_fungus_on_a_stick {"text": "きのこ棒使用"}
scoreboard objectives add UseMagmaCubeEgg minecraft.used:minecraft.magma_cube_spawn_egg {"text":"マグマキューブエッグ使用"}
scoreboard objectives add LeaveGame minecraft.custom:minecraft.leave_game {"text":"ログインフラグ"}
scoreboard objectives add ChangeSettings trigger {"text":"設定変更"}
scoreboard objectives add ChangeSkill trigger {"text":"スキル変更"}
scoreboard objectives add ChangeJob trigger {"text":"職業変更"}
scoreboard objectives add ChangeDifficulty trigger {"text":"難易度変更"}
scoreboard objectives add TipsSuppressFlag dummy {"text":"TIPS抑制フラグ"}
scoreboard objectives add TipsSupTrigger trigger {"text":"TIPS抑制トリガー"}
scoreboard objectives add SneakTime minecraft.custom:minecraft.sneak_time {"text":"スニーク時間"}
scoreboard objectives add SneakTrigger dummy {"text":"スニーク累積時間"}
scoreboard objectives add SneakFrequency dummy {"text":"スニーク頻度"}
scoreboard objectives add DamageTaken minecraft.custom:minecraft.damage_taken {"text":"受けたダメージ量"}
scoreboard objectives add Jump minecraft.custom:minecraft.jump {"text":"ジャンプ"}
scoreboard objectives add Deaths minecraft.custom:minecraft.deaths {"text":"死亡"}
scoreboard objectives add Hunger dummy {"text":"死亡時調整満腹度"}
scoreboard objectives add MineSpawner minecraft.mined:minecraft.lodestone {"text":"ロードストーン採掘"}
scoreboard objectives add Talk minecraft.custom:talked_to_villager {"text":"会話回数"}
scoreboard objectives add Trade minecraft.custom:traded_with_villager {"text":"取引回数"}
scoreboard objectives add kill trigger {"text":"個人killフラグ"}
scoreboard objectives add UseEnderPearl minecraft.used:minecraft.ender_pearl {"text":"エンダーパールを使った回数"}

###チーム作成
team add NoCollision {"text":"衝突判定なし"}
team modify NoCollision collisionRule never
team add Friendly {"text":"味方チーム"}
team modify Friendly friendlyFire false
team modify Friendly collisionRule never
team modify Friendly seeFriendlyInvisibles false
team modify Friendly color white
team add Enemy {"text":"敵チーム"}
# team modify Friendly prefix {"text":"✦","color":"red"}
# team modify Friendly suffix {"text":"✦","color":"red"}
###カラーチーム作成
team add Red {"text":"赤色チーム"}
team modify Red color red
team add LightPurple {"text":"赤紫色チーム"}
team modify LightPurple color light_purple
team add Gold {"text":"黄色チーム"}
team modify Gold color gold

#時間初期化
execute unless score $Hours Count matches 0.. run scoreboard players set $Hours Count 0
execute unless score $Minutes Count matches 0.. run scoreboard players set $Minutes Count 0

###Callから呼び出されるスキル系統のスコア
scoreboard objectives add ActionTick dummy {"text":"行動時間"}
scoreboard objectives add NextActionTick dummy {"text":"次の行動時間"}
scoreboard objectives add BlinkSubTimer dummy {"text":"幻影発動時タイマー"}
scoreboard objectives add ParentID dummy {"text":"親ID"}

#ScoreDamage
function score_damage:core/init

#SmartMotion
function smart_motion:core/load_once

#スキルデータ
function skill:data/

#TIPSデータ
function settings:player/tips

#飛空島ゲート駅schedule開始
function area:system/flying_island/gate/change
#初回は交易島に固定
data modify storage area: FlyingIslandEnteredFlag set value 1b
schedule clear area:system/flying_island/gate/change

#ルーラデフォルト定義
function settings:skill/black_mage/return/default

#難易度リセット カジュアル
function main:difficulty/reset
execute if data storage main: {debug:1b} run function main:difficulty/select/debug

#島の攻略率
data remove storage area: capture
data merge storage area: {capture:{skylands:{},flying_island:{},cloudia:{}}}

# システムストレージ初期化
    data remove storage main: System
    advancement revoke @a only area:system/skylands/chaos_islands/first
    advancement revoke @a only area:system/skylands/chaos_islands/second
    advancement revoke @a only area:system/skylands/chaos_islands/fourth
    advancement revoke @a only area:system/skylands/chaos_islands/fifth
    advancement revoke @a only area:system/skylands/chaos_islands/sixth
    advancement revoke @a only area:system/skylands/chaos_islands/boss

execute unless data storage main: {debug:1b} run function settings:alpha_debug/

# 固定村人復帰地点の設定
execute unless data storage main: {debug:1b} run function area:villager_point/init
