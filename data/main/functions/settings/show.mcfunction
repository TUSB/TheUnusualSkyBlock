##############################
### プレイヤーゲーム設定
##############################

### 設定画面
execute if score @s ChangeSettings matches 1 run tellraw @s [{"text":"設定画面開いたー"}]
### ステータス確認（ジョブ・レベル・経験値・スキル設定）
execute if score @s ChangeSettings matches 2 run tellraw @s [{"text":"現在のステータスだしたー"}]
### 攻略率確認（島＆クエスト）
execute if score @s ChangeSettings matches 3 run tellraw @s [{"text":"攻略率開いたー"}]





