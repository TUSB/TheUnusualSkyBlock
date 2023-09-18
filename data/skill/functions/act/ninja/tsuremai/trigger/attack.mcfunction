##############################
### 連舞 近接攻撃時
##############################

scoreboard players operation _ Level = @s TsuremaiLevel
data modify storage skill: Skill.Trigger set value "近接攻撃する"
data modify storage skill: Skill.Type set value "Trigger"
execute unless score @s FreezeTimer matches 0.. unless data entity @s SelectedItem.tag.Skill{Name:"ラピッドコンボ"} run function skill:practice/check_type
