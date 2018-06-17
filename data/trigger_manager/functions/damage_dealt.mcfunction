##############################
### 与ダメトリガー
##############################

### 剣士＜真空斬り＞
execute if entity @s[scores={ModeSkill=11041..11049,SprintOneCm=1..}] unless entity @s[nbt=!{SelectedItem:{id:"minecraft:wooden_sword"}},nbt=!{SelectedItem:{id:"minecraft:stone_sword"}},nbt=!{SelectedItem:{id:"minecraft:golden_sword"}},nbt=!{SelectedItem:{id:"minecraft:iron_sword"}},nbt=!{SelectedItem:{id:"minecraft:diamond_sword"}}] run function skill_manager:knight/aerial_slash/act

### 剣士＜はやぶさ斬り＞
execute if entity @s[scores={ModeSkill=11011..11019}] unless entity @s[nbt=!{SelectedItem:{id:"minecraft:wooden_sword"}},nbt=!{SelectedItem:{id:"minecraft:stone_sword"}},nbt=!{SelectedItem:{id:"minecraft:golden_sword"}},nbt=!{SelectedItem:{id:"minecraft:iron_sword"}},nbt=!{SelectedItem:{id:"minecraft:diamond_sword"}}] run function skill_manager:knight/falcon_slash/act

### トリガーリセット
scoreboard players reset @s DamageDealt
