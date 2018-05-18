##############################
### モードチェンジ
##############################

### どちらのモードでもない場合は赤になる
### 赤→青
execute store result score $Tmp Global run tag @s remove ModeRed
execute if score $Tmp Global matches 1 run tag @s add ModeBlue
### 青→赤
execute if score $Tmp Global matches 0 run tag @s remove ModeBlue
execute if score $Tmp Global matches 0 run tag @s add ModeRed

### モードスキルにスキルを設定
scoreboard players operation @s[tag=ModeRed] ModeSkill = @s ModeSkillRed
scoreboard players operation @s[tag=ModeBlue] ModeSkill = @s ModeSkillBlue

### メッセージ
tellraw @s[tag=ModeRed] {"text":"ルビーモードにチェンジ！","color":"red","bold":true}
tellraw @s[tag=ModeBlue] {"text":"サファイアモードにチェンジ！","color":"blue","bold":true}
execute positioned as @s run playsound minecraft:block.note.pling master @s ~ ~ ~ 0.4 2

### スキル名表示セット
scoreboard players operation @s ShowSkillNo = @s ModeSkill
function skill_manager:show_skill/name

### スコアリセット
scoreboard players reset @s UseModeEgg
