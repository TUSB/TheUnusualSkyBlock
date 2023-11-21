#Function
## スキルによる分岐
execute store result score _ _ run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Skill
execute store result score _ Calc run data get storage mob_data: Condition.Select
execute if score _ _ = _ Calc
