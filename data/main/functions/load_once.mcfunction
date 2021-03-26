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

###変数や定数、カウンタ
scoreboard objectives add _ dummy {"text":"一時変数"}
scoreboard objectives add Ret dummy {"text":"戻り値用一時変数"}
