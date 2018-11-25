##############################
### プレイヤーゲーム設定
##############################

### ステータス確認（ジョブ・レベル・経験値・スキル設定）
execute if score @s ChangeSettings matches 1 run function main:settings/show_status
### 攻略率確認（島＆クエスト）
execute if score @s ChangeSettings matches 2 run tellraw @s [{"text":"[INFO] 攻略率開いたー"}]
### MP表示リセット
execute if score @s ChangeSettings matches 3 run function main:settings/clear_mp
### パーティクル設定
execute if score @s ChangeSettings matches 4 run function main:settings/toggle_indicator
### テキスト表示位置調整
execute if score @s ChangeSettings matches 5..7 run function main:settings/tune_offset
### パーティクル設定
execute if score @s ChangeSettings matches 99 run function main:settings/toggle_sneak_trigger

### トリガーリセット
scoreboard players reset @s ChangeSettings
scoreboard players enable @s ChangeSettings

### 設定画面再表示
function main:settings/reshow
