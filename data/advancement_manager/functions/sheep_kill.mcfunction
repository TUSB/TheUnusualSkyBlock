##############################
### 羊キル処理
##############################

### 進捗剥奪
advancement revoke @s only advancement_manager:skylands/sheep_kill
### スコア加算
scoreboard players add @s SheepKillCount 1
### 上位進捗解除
execute if entity @s[scores={SheepKillCount=1000..},advancements={advancement_manager:skylands/sheep_killer=false}] run advancement grant @s only advancement_manager:skylands/sheep_killer