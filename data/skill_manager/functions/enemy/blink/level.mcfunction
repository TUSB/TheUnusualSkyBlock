##############################
### 幻影レベル分岐
##############################

### Level読み込み
execute store result score $Level Global run data get block 0 0 0 RecordItem.tag.CurrentSkill[0].Level 1

execute if score $Level Global matches 1 run function skill_manager:enemy/blink/1
execute if score $Level Global matches 2 run function skill_manager:enemy/blink/2
execute if score $Level Global matches 3 run function skill_manager:enemy/blink/3
