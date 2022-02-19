#> debug:tusb_memory_plus/check_type

data remove storage item: Item 
data modify storage item: Item set from entity @s Item

execute in area:control_area run function debug:tusb_memory_plus/check_trigger

# 発動条件を選択
data remove storage skill: TUSBM.ActTrigger
tellraw @p {"text":"発動条件を選んでください。"}
tellraw @p [{"text":" 近接攻撃する ","clickEvent": {"action": "run_command","value": "/data modify storage skill: TUSBM.ActTrigger set value \"近接攻撃する\""}}," ",{"text":" 弓を構えて矢を撃つ ","clickEvent": {"action": "run_command","value": "/data modify storage skill: TUSBM.ActTrigger set value \"弓を構えて矢を撃つ\""}}," ",{"text":" クロスボウを構えて矢を撃つ ","clickEvent": {"action": "run_command","value": "/data modify storage skill: TUSBM.ActTrigger set value \"クロスボウを構えて矢を撃つ\""}}," ",{"text":" 人参棒を使用 ","clickEvent": {"action": "run_command","value": "/data modify storage skill: TUSBM.ActTrigger set value \"人参棒を使用\""}}," ",{"text":" 盾で攻撃を防ぐ ","clickEvent": {"action": "run_command","value": "/data modify storage skill: TUSBM.ActTrigger set value \"盾で攻撃を防ぐ\""}}," ",{"text":" 剣・斧で攻撃 ","clickEvent": {"action": "run_command","value": "/data modify storage skill: TUSBM.ActTrigger set value \"剣・斧で攻撃\""}}," ",{"text":" 剣を持った状態でスニーク解除 ","clickEvent": {"action": "run_command","value": "/data modify storage skill: TUSBM.ActTrigger set value \"剣を持った状態でスニーク解除\""}}," ",{"text":" スニークする ","clickEvent": {"action": "run_command","value": "/data modify storage skill: TUSBM.ActTrigger set value \"スニークする\""}}]

data remove storage skill: TUSBM.Skill
data modify entity @s Item set from storage item: Item
