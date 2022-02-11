#スキルレベル取得
execute store result score _ Level run data get storage skill: Skill.Level
#execute if entity @s[tag=からくりオーラ] run scoreboard players add _ Level 1
#インターバル取得
#execute store result score _ Interval run data get storage skill: Skill.Interval
#Type分岐
execute if data storage skill: Skill{Type:"Job"} run function skill:practice/job/check_acquirement
execute if data storage skill: Skill{Type:"TUSBMemory"} run function skill:practice/tusb_memory
execute if data storage skill: Skill{Type:"Trigger"} run function skill:practice/job/check_mp
#アイテム更新
execute unless data storage skill: Skill{Type:"Trigger"} run function skill:practice/update_item
