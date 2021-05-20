
###潜在能力残りポイント計算
scoreboard players set _ Calc 0

scoreboard players operation _ SubLevel = @s SubLevel
scoreboard players operation _ SubLevel -= $Default SubLevel
scoreboard players set _ _ 2
scoreboard players operation _ SubLevel *= _ _
scoreboard players operation _ Calc += _ SubLevel
scoreboard players operation _ SubLevel /= _ _

scoreboard players operation _ CritProbability = @s CritProbability
scoreboard players operation _ CritProbability -= $Default CritProbability
scoreboard players set _ _ 2
scoreboard players operation _ CritProbability *= _ _
scoreboard players operation _ Calc += _ CritProbability
scoreboard players operation _ CritProbability /= _ _

scoreboard players operation _ ResistMin = @s ResistMin
scoreboard players operation _ ResistMin -= $Default ResistMin
scoreboard players operation _ Calc += _ ResistMin

scoreboard players operation _ AuraRate = @s AuraRate
scoreboard players operation _ AuraRate -= $Default AuraRate
scoreboard players operation _ Calc += _ AuraRate

scoreboard players operation _ IntervalRate = @s IntervalRate
scoreboard players operation _ IntervalRate -= $Default IntervalRate
scoreboard players set _ _ -1
scoreboard players operation _ IntervalRate *= _ _
scoreboard players set _ _ 2
scoreboard players operation _ IntervalRate /= _ _
scoreboard players operation _ Calc += _ IntervalRate

scoreboard players operation _ MPCostRate = @s MPCostRate
scoreboard players operation _ MPCostRate -= $Default MPCostRate
scoreboard players set _ _ -1
scoreboard players operation _ MPCostRate *= _ _
scoreboard players operation _ Calc += _ MPCostRate

scoreboard players operation _ Calc += @s AddKnight
scoreboard players operation _ Calc += @s AddNinja
scoreboard players operation _ Calc += @s AddHunter
scoreboard players operation _ Calc += @s AddWhite_mage
scoreboard players operation _ Calc += @s AddBlack_mage
scoreboard players operation _ Calc += @s AddSummoner
scoreboard players operation _ Calc += @s AddPuppet_master
scoreboard players operation _ Calc += @s AddThief
