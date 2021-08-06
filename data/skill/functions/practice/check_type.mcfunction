#スキル取得
data modify storage skill: Skill set from storage item: Item.tag.Skill
#スキルレベル取得
execute store result score _ Level run data get storage skill: Skill.Level
#execute if entity @s[tag=からくりオーラ] run scoreboard players add _ Level 1
#インターバル取得
execute store result score _ Interval run data get storage skill: Skill.Interval
#職業とTUSBメモリー分岐
execute if data storage skill: Skill{Type:"Job"} run function skill:practice/job/check_acquirement
execute if data storage skill: Skill{Type:"TUSBMemory"} run function skill:practice/tusb_memory
