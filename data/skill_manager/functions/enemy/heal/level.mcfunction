##############################
### ヒールレベル分岐
##############################

### Level読み込み
execute store result score $Level Global run data get block 0 0 0 RecordItem.tag.CurrentSkill[0].Level 1

execute if score $Level Global matches 1 run function skill_manager:enemy/heal/1
execute if score $Level Global matches 2 run function skill_manager:enemy/heal/2
execute if score $Level Global matches 3 run function skill_manager:enemy/heal/3
execute if score $Level Global matches 4 run function skill_manager:enemy/heal/4
execute if score $Level Global matches 5 run function skill_manager:enemy/heal/5
execute if score $Level Global matches 6 run function skill_manager:enemy/heal/6
execute if score $Level Global matches 7 run function skill_manager:enemy/heal/7
execute if score $Level Global matches 8 run function skill_manager:enemy/heal/8
execute if score $Level Global matches 9 run function skill_manager:enemy/heal/9
execute if score $Level Global matches 10 run function skill_manager:enemy/heal/10
