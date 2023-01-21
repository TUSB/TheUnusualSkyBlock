#Function
execute store result score _ _ run scoreboard players get @s OhMyDatID
execute as @e[distance=..0.5,type=armor_stand] unless entity @s[tag=!ZedraHead,tag=!ZedraBody] run scoreboard players operation @s ParentID = _ _
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Skill set value 0
