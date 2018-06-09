##############################
### 与ダメトリガー
##############################

### 剣士＜真空切り＞
execute if entity @s[scores={ModeSkill=99995,SprintOneCm=1..}] unless entity @s[nbt=!{SelectedItem:{id:"minecraft:wooden_sword"}},nbt=!{SelectedItem:{id:"minecraft:stone_sword"}},nbt=!{SelectedItem:{id:"minecraft:golden_sword"}},nbt=!{SelectedItem:{id:"minecraft:iron_sword"}},nbt=!{SelectedItem:{id:"minecraft:diamond_sword"}}] run function skill_manager:knight/aerial_slash/act

### トリガーリセット
scoreboard players reset @s DamageDealt
