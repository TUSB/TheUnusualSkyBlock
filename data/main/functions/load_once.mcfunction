##############################
### 初回ロード処理
##############################

#criteria変更につき一旦削除
#TODO: 配布時には消す
scoreboard objectives remove HP

###ステータス
scoreboard objectives add Level dummy {"text":"レベル"}
scoreboard objectives add ElementFire dummy {"text":"炎属性値"}
scoreboard objectives add ElementCold dummy {"text":"氷属性値"}
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
###アイテム
scoreboard objectives add EnchantLevel dummy {"text":"エンチャントレベル"}

###変数や定数、カウンタ
scoreboard objectives add _ dummy {"text":"一時変数"}
scoreboard objectives add Ret dummy {"text":"戻り値用一時変数"}
scoreboard objectives add ResistEffects dummy {"text":"状態異常耐性"}
scoreboard objectives add ResistLock dummy {"text":"状態異常回避時ロック"}

###計算、乱数
scoreboard objectives add Calc dummy {"text": "計算用"}
scoreboard objectives add Random dummy {"text": "乱数用"}

###ジョブ系
scoreboard objectives add Job dummy {"text": "現在のジョブ"}
scoreboard objectives add Exp dummy {"text":"ジョブ経験値"}
scoreboard objectives add AllExp dummy {"text": "総獲得経験値"}
scoreboard objectives add RequiredExp dummy {"text": "ジョブ必要経験値"}
scoreboard objectives add SubLevel dummy {"text":"現在のジョブのサブレベル"}
scoreboard objectives add CritProbability dummy {"text":"クリティカルヒット確率"}
scoreboard objectives add ResistMin dummy {"text":"状態異常耐性下限"}
scoreboard objectives add AuraRate dummy {"text":"オーラ延長割合"}
scoreboard objectives add IntervalRate dummy {"text":"スキル発動無効時間短縮割合"}
scoreboard objectives add MPCostRate dummy {"text":"MP消費軽減割合"}
scoreboard objectives add AddKnight dummy {"text": "追加レベル：剣士"}
scoreboard objectives add AddNinja dummy {"text": "追加レベル：忍者"}
scoreboard objectives add AddHunter dummy {"text": "追加レベル：狩人"}
scoreboard objectives add AddWhite_mage dummy {"text": "追加レベル：白魔導士"}
scoreboard objectives add AddBlack_mage dummy {"text": "追加レベル：黒魔導士"}
scoreboard objectives add AddSummoner dummy {"text": "追加レベル：召喚士"}
scoreboard objectives add AddPuppet_master dummy {"text": "追加レベル：絡繰士"}
scoreboard objectives add AddThief dummy {"text": "追加レベル：怪盗"}

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

###コントロールエリア設定
execute in area:control_area run forceload add 0 0
execute in area:control_area run setblock 2 2 2 shulker_box
execute in area:control_area run setblock 2 3 2 oak_sign

###トリガー
scoreboard objectives add UseSnowball minecraft.used:minecraft.snowball {"text": "雪玉使用"}
scoreboard objectives add UseBow minecraft.used:minecraft.bow {"text": "弓使用"}
scoreboard objectives add UseCrossbow minecraft.used:minecraft.crossbow {"text": "クロスボウ使用"}
scoreboard objectives add UseTrident minecraft.used:minecraft.trident {"text": "トライデント使用"}
scoreboard objectives add LeaveGame minecraft.custom:minecraft.leave_game {"text":"ログインフラグ"}
scoreboard objectives add ChangeSettings trigger {"text":"設定変更"}
scoreboard objectives add SneakTime minecraft.custom:minecraft.sneak_time {"text":"スニーク時間"}
scoreboard objectives add SneakTrigger dummy {"text":"スニーク累積時間"}
scoreboard objectives add PotentialTrigger trigger {"text":"潜在能力変更トリガー"}
scoreboard objectives add PotentialPrev trigger {"text":"潜在能力変更前回トリガー"}
scoreboard objectives add DamageTaken minecraft.custom:minecraft.damage_taken {"text":"受けたメージ量"}
scoreboard objectives add Deaths minecraft.custom:minecraft.deaths {"text":"死亡"}
scoreboard objectives add Hunger dummy {"text":"死亡時調整満腹度"}
scoreboard objectives add Age minecraft.custom:minecraft.time_since_death {"text":"生きている時間"}
