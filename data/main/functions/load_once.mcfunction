##############################
### 初回ロード処理
##############################

###ステータス
scoreboard objectives add Level dummy {"text":"レベル"}
scoreboard objectives add ElementFire dummy {"text":"炎属性値"}
scoreboard objectives add ElementCold dummy {"text":"氷属性値"}
scoreboard objectives add ElementLightning dummy {"text":"雷属性値"}
scoreboard objectives add ElementLight dummy {"text":"光属性値"}
scoreboard objectives add ElementDark dummy {"text":"闇属性値"}
scoreboard objectives add HP health {"text":"HP"}
scoreboard objectives add HPMax dummy {"text":"HP最大値"}
scoreboard objectives add MP dummy {"text":"MP"}
scoreboard objectives add MPMax dummy {"text":"MP最大値"}
scoreboard objectives add Attack dummy {"text":"物理攻撃力"}
scoreboard objectives add Defense dummy {"text":"物理防御力"}
scoreboard objectives add SpecialAttack dummy {"text":"魔法攻撃力"}
scoreboard objectives add SpecialDefense dummy {"text":"魔法防御力"}
scoreboard objectives add BaseTotal dummy {"text":"合計基礎ポイント"}
scoreboard objectives add GrowTotal dummy {"text":"合計成長ポイント"}

###アイテム
scoreboard objectives add EnchantLevel dummy {"text":"エンチャントレベル"}

###変数や定数、カウンタ
scoreboard objectives add _ dummy {"text":"一時変数"}
scoreboard objectives add Ret dummy {"text":"戻り値用一時変数"}

###計算、乱数
scoreboard objectives add Calc dummy {"text": "計算用"}
scoreboard objectives add Random dummy {"text": "乱数用"}

###乱数初期化
summon minecraft:area_effect_cloud ~ ~ ~ {Age:0,WaitTime:1,ReapplicationDelay:0,Duration:0,Tags:[Initialized]}
execute store result score $RndMWC Random run data get entity @e[distance=..1,type=minecraft:area_effect_cloud,limit=1] UUID[0] 0.01
execute store result score $RndMWCCarry Random run data get entity @e[distance=..1,type=minecraft:area_effect_cloud,limit=1] UUID[1] 0.01
scoreboard players set _ _ 65536
scoreboard players operation $RndMWC Random %= _ _
scoreboard players operation $RndMWCCarry Random /= _ _

###コントロールエリア設定
execute in area:control_area run forceload add 0 0
execute in area:control_area run setblock 2 2 2 shulker_box
execute in area:control_area run setblock 2 3 2 oak_sign
