##############################
### クエスト受注上限時の受注処理
##############################

###メッセージ
tellraw @s {"text":"受注上限件数を越えてクエストを受注することは出来ません。","color":"red"}
tag @s add CantReceive