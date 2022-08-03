#> debug:tusb_memory_plus/set
#初回スキル付与時 固有のNameがあるか確認
execute unless data storage item: Item.tag.Skill if data storage item: Item.tag.display.Name run data modify storage item: Item.tag.UniqueName set value 1b
#以前のスキルLoreを削除
execute if data storage item: Item.tag.Skill unless data storage item: Item.tag.Skill.Initializing unless data storage item: Item.tag.UniqueName store result storage item: Item.tag.Skill.LoreCount int 1 run data get storage item: Item.tag.Skill.LoreCount 0.9999999999 
execute if data storage item: Item.tag.Skill run function skill:trigger/set/remove_lore
#Loreセット
#スキル名
data modify block 2 3 2 Text1 set value '[{"text":"","color":"white","italic":false},{"storage":"skill:","nbt":"Skill.Icon","font":"icon","color":"light_purple"},{"text":" "},{"storage":"skill:","nbt":"Skill.Skill"}]'
#固有のNameがなければスキル名をNameに入れる LoreCount-1
execute unless data storage item: Item.tag.UniqueName run data modify storage item: Item.tag.display.Name set from block 2 3 2 Text1
#固有のNameがあればスキル名をLoreに入れる
execute if data storage item: Item.tag.UniqueName run data modify storage item: Item.tag.display.Lore append from block 2 3 2 Text1
#説明
data modify storage item: Item.tag.display.Lore append value '{"text":"---TUSBMemory---","obfuscated":true,"color":"gray","italic":false}'
#スキル付与
data modify storage item: Item.tag.Skill set from storage skill: Skill
data modify storage item: Item.tag.Skill.Type set value "TUSBMemory"
data modify storage item: Item.tag.Skill.Initializing set value 1b
execute unless data storage item: Item.tag.UniqueName run data modify storage item: Item.tag.Skill.LoreCount set value 1
execute if data storage item: Item.tag.UniqueName run data modify storage item: Item.tag.Skill.LoreCount set value 2
data modify storage item: Item.tag.Skill.SkillID set from storage skill: TUSBM.Skill
#不要なNBT削除
data remove storage item: Item.tag.Skill.Lore
data remove storage item: Item.tag.Skill.ClickEvent
data remove storage item: Item.tag.Skill.Icon
data remove storage item: Item.tag.Skill.Skill
data remove storage item: Item.tag.Skill.MP
data remove storage item: Item.tag.Skill.AcquireLevel
data remove storage item: Item.tag.Skill.Interval
