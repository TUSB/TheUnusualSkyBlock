##############################
### 繰り返し動作コンティニュー
##############################

### 繰り返しカウントを減らす
scoreboard players remove @s RepeaterCount 1
### 0以下かつContinue設定なら次を読み込む
execute if score @s RepeaterCount matches ..0 if entity @s[tag=Repeater.Continue] run function ...
