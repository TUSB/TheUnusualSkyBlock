##############################
### 初回ロード処理
##############################

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
scoreboard objectives add TemporaryEffects dummy {"text":"一時的ステータス変化Flags"}

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
scoreboard objectives add GameTime dummy {"text":"ゲームタイム"}

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
scoreboard objectives add CritProbability dummy {"text":"クリティカルヒット確率"}
scoreboard objectives add ResistMin dummy {"text":"状態異常耐性下限"}
scoreboard objectives add AuraRate dummy {"text":"オーラ延長割合"}
scoreboard objectives add Interval dummy {"text":"スキル発動無効時間"}
scoreboard objectives add IntervalRate dummy {"text":"スキル発動無効時間短縮割合"}
scoreboard objectives add MPCostRate dummy {"text":"MP消費軽減割合"}
scoreboard objectives add KnightLv dummy {"text": "剣士スキルレベル"}
scoreboard objectives add NinjaLv dummy {"text": "忍者スキルレベル"}
scoreboard objectives add HunterLv dummy {"text": "狩人スキルレベル"}
scoreboard objectives add WhiteMageLv dummy {"text": "白魔道士スキルレベル"}
scoreboard objectives add BlackMageLv dummy {"text": "黒魔道士スキルレベル"}
scoreboard objectives add SummonerLv dummy {"text": "召喚士スキルレベル"}
scoreboard objectives add PuppetMasterLv dummy {"text": "絡繰士スキルレベル"}
scoreboard objectives add ThiefLv dummy {"text": "怪盗スキルレベル"}

###スキル
scoreboard objectives add MPHealingWait dummy {"text":"MP回復ウェイト"}
scoreboard objectives add MPAcceleration dummy {"text":"MP回復加速量"}
scoreboard objectives add MPConsumption dummy {"text":"MP回復量"}
scoreboard objectives add TrackingID dummy {"text":"追尾スキル同期ID"}
#剣士
scoreboard objectives add FalconSlashTimer dummy {"text":"はやぶさ斬り遅延タイマー"}
scoreboard objectives add IronWill dummy {"text":"アイアンウィル残りtick数"}
scoreboard objectives add RagingDamage dummy {"text":"猛火斬ダメージ"}
scoreboard objectives add OdinSlash dummy {"text":"斬鉄剣発動タイミング調整"}
scoreboard objectives add TacticalHeal dummy {"text":"タクティカルヒール持続確率"}
#忍者
scoreboard objectives add Choyaku dummy {"text":"跳躍跳躍力"}
scoreboard objectives add Aisatsu dummy {"text":"アイサツ消費MP減少効果量"}
scoreboard objectives add Katon dummy {"text":"火遁"}
scoreboard objectives add Kazakiri dummy {"text":"風切"}
scoreboard objectives add Mokuso dummy {"text":"黙想"}
scoreboard objectives add Suiton dummy {"text":"水遁"}
scoreboard objectives add Kaishaku dummy {"text":"介錯残りtick数"}
#白魔導士
scoreboard objectives add PillarCount dummy {"text":"セイクリッドピラーダメージ付与上限"}
scoreboard objectives add PillarDamage dummy {"text":"セイクリッドピラーダメージ"}
#黒魔道士
scoreboard objectives add EclipseRadius dummy {"text":"エクリプスフレイム半径"}
#召喚士
scoreboard objectives add FillSize dummy {"text":"フィールサイズ"}
#共通
scoreboard objectives add SkyWalk dummy {"text":"スカイウォーク"}

###乱数初期化
summon minecraft:area_effect_cloud ~ ~ ~ {Age:0,WaitTime:1,ReapplicationDelay:0,Duration:0,Tags:[Initialized]}
execute store result score $RndMWC Random run data get entity @e[distance=..1,type=minecraft:area_effect_cloud,limit=1] UUID[0] 0.01
execute store result score $RndMWCCarry Random run data get entity @e[distance=..1,type=minecraft:area_effect_cloud,limit=1] UUID[1] 0.01
scoreboard players set _ _ 65536
scoreboard players operation $RndMWC Random %= _ _
scoreboard players operation $RndMWCCarry Random /= _ _

###総獲得経験値量初期化
scoreboard players add $World AllExp 0
###他ジョブレベルアップ最大値初期化
function settings:job/potentials/add_level/upper_limit
###特殊デバフ名初期化
function settings:effects/too_bad_effects

###コントロールエリア設定
execute in area:control_area run forceload add 0 0
execute in area:control_area run setblock 2 2 2 shulker_box
execute in area:control_area run setblock 2 3 2 oak_sign
execute in area:control_area positioned 5 5 5 run function calc:geometry/tp_00000
execute in area:control_area positioned 5 5 5 run function calc:geometry/tp_00001
execute in area:control_area positioned 5 5 5 run function calc:geometry/tp_00002

###トリガー
scoreboard objectives add UseSnowball minecraft.used:minecraft.snowball {"text": "雪玉使用"}
scoreboard objectives add UseBow minecraft.used:minecraft.bow {"text": "弓使用"}
scoreboard objectives add UseCrossbow minecraft.used:minecraft.crossbow {"text": "クロスボウ使用"}
scoreboard objectives add UseTrident minecraft.used:minecraft.trident {"text": "トライデント使用"}
scoreboard objectives add UseCarrotStick minecraft.used:minecraft.carrot_on_a_stick {"text": "人参棒使用"}
scoreboard objectives add LeaveGame minecraft.custom:minecraft.leave_game {"text":"ログインフラグ"}
scoreboard objectives add ChangeSettings trigger {"text":"設定変更"}
scoreboard objectives add ChangeSkill trigger {"text":"スキル変更"}
scoreboard objectives add TipsSuppressFlag dummy {"text":"TIPS抑制フラグ"}
scoreboard objectives add TipsSupTrigger trigger {"text":"TIPS抑制トリガー"}
scoreboard objectives add SneakTime minecraft.custom:minecraft.sneak_time {"text":"スニーク時間"}
scoreboard objectives add SneakTrigger dummy {"text":"スニーク累積時間"}
scoreboard objectives add SneakFrequency dummy {"text":"スニーク頻度"}
scoreboard objectives add PotentialTrigger trigger {"text":"潜在能力変更トリガー"}
scoreboard objectives add PotentialPrev trigger {"text":"潜在能力変更前回トリガー"}
scoreboard objectives add DamageTaken minecraft.custom:minecraft.damage_taken {"text":"受けたメージ量"}
scoreboard objectives add Jump minecraft.custom:minecraft.jump {"text":"ジャンプ"}
scoreboard objectives add Deaths minecraft.custom:minecraft.deaths {"text":"死亡"}
scoreboard objectives add Hunger dummy {"text":"死亡時調整満腹度"}

###チーム作成
team add Friendly {"text":"味方チーム"}
team modify Friendly friendlyFire false
team modify Friendly collisionRule never
team modify Friendly color white
team modify Friendly prefix {"text":"✦","color":"red"}
team modify Friendly suffix {"text":"✦","color":"red"}
###カラーチーム作成
team add Red {"text":"赤色チーム"}
team modify Red color red
team add LightPurple {"text":"赤紫色チーム"}
team modify LightPurple color light_purple
team add Gold {"text":"黄色チーム"}
team modify Gold color gold


###Callから呼び出されるスキル系統のスコア
scoreboard objectives add CastingTick dummy



#スキルデータ
function skill:data/

#TIPSデータ
function settings:player/tips
