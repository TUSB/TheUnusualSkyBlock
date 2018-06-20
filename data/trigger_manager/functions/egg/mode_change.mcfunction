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
scoreboard players operation @s[tag=ModeRed] ModeCost = @s ModeRedCost
scoreboard players operation @s[tag=ModeBlue] ModeCost = @s ModeBlueCost

### メッセージ
###---演出---Start
tellraw @s[tag=ModeRed] {"text":"ルビーモードにチェンジ！","color":"red","bold":true}
tellraw @s[tag=ModeBlue] {"text":"サファイアモードにチェンジ！","color":"blue","bold":true}
stopsound @a neutral minecraft:entity.polar_bear.ambient
execute positioned as @s[tag=ModeRed] run playsound minecraft:block.note.harp master @s ~ ~ ~ 0.4 1.42 0
execute positioned as @s[tag=ModeBlue] run playsound block.note.harp master @a ~ ~ ~ 0.4 0.7 0
###---演出---End

### スキル名表示セット
scoreboard players operation @s ShowSkillNo = @s ModeSkill
tag @s[tag=ModeRed] add ShowSkillRed
tag @s[tag=ModeBlue] add ShowSkillBlue
function skill_manager:show_skill/name

### スコアリセット
scoreboard players reset @s UseModeEgg
