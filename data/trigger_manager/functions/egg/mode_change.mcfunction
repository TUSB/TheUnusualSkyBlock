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
scoreboard players operation @s[tag=ModeRed] ModeCost = @s ModeCostRed
scoreboard players operation @s[tag=ModeBlue] ModeCost = @s ModeCostBlue
scoreboard players operation @s[tag=ModeRed] ModeInterval = @s ModeIntervalRed
scoreboard players operation @s[tag=ModeBlue] ModeInterval = @s ModeIntervalBlue

### メッセージ
###---演出---Start
tellraw @s[tag=ModeRed] {"text":"ルビーモードにチェンジ！","color":"red","bold":true}
tellraw @s[tag=ModeBlue] {"text":"サファイアモードにチェンジ！","color":"blue","bold":true}
stopsound @a neutral minecraft:entity.polar_bear.ambient
execute positioned as @s[tag=ModeRed] run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 0.4 1.42 0
execute positioned as @s[tag=ModeBlue] run playsound minecraft:block.note_block.harp master @a ~ ~ ~ 0.4 0.7 0
###---演出---End

### スキル名表示セット
scoreboard players operation @s ShowSkillNo = @s ModeSkill
tag @s[tag=ModeRed] add ShowSkillRed
tag @s[tag=ModeBlue] add ShowSkillBlue
function skill_manager:show_skill/name

### スコアリセット
scoreboard players reset @s UseModeEgg

### バイオハンドリング処理
scoreboard players operation $PuppetID ID = @s ID
execute unless score @s ModeSkill matches 71031..71039 as @e[tag=Puppet] if score @s ID = $PuppetID ID run tag @s remove Automaton
execute if score @s ModeSkill matches 71031..71039 as @e[tag=Puppet] if score @s ID = $PuppetID ID run tag @s add Automaton
execute if score @s ModeSkill matches 71031..71039 as @e[tag=Puppet] if score @s ID = $PuppetID ID at @s positioned ~ ~-0.1 ~ align xyz positioned ~0.5 ~0.93750 ~0.5 run tp @s ~ ~ ~ 0 0
