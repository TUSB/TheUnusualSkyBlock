#> skill:practice/check_type
#成功フラグリセット
data remove storage skill: Success
#スキルレベル取得
execute store result score _ Level run data get storage skill: Skill.Level
execute if entity @a[distance=..32,scores={Burst=0..,Job=7}] run scoreboard players add _ Level 1
#潜在能力 - 属性攻撃増加
scoreboard players operation $ElementDamageAdd ElementDamageAdd = @s ElementDamageAdd
#Type分岐 凍結時、職業スキル・TUSBメモリー無効
execute if data storage skill: Skill{Type:"Job"} if score @s FreezeTimer matches 0.. run return run function makeup:effect/freeze/fail
execute if data storage skill: Skill{Type:"Job"} unless score @s FreezeTimer matches 0.. run function skill:practice/job/check_acquirement
execute if data storage skill: Skill{Type:"TUSBMemory"} run function skill:practice/tusb_memory
execute if data storage skill: Skill{Type:"Trigger"} run function skill:practice/job/check_mp
#アイテム更新
execute if data storage skill: {Success:1b} unless data storage skill: Skill{Type:"Trigger"} run function skill:practice/update_item
