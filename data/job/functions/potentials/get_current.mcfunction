
###潜在能力残りポイント計算
scoreboard players set _ Calc 0

scoreboard players operation _ SubLevel = @s SubLevel
execute store result score _ _ run data get storage tusb_player: Potentials.Default.SubLevel
scoreboard players operation _ SubLevel -= _ _
scoreboard players set _ _ 2
scoreboard players operation _ SubLevel *= _ _
scoreboard players operation _ Calc += _ SubLevel
scoreboard players operation _ SubLevel /= _ _

scoreboard players operation _ CritProbability = @s CritProbability
execute store result score _ _ run data get storage tusb_player: Potentials.Default.CritProbability
scoreboard players operation _ CritProbability -= _ _
scoreboard players set _ _ 2
scoreboard players operation _ CritProbability *= _ _
scoreboard players operation _ Calc += _ CritProbability
scoreboard players operation _ CritProbability /= _ _

scoreboard players operation _ ResistMin = @s ResistMin
execute store result score _ _ run data get storage tusb_player: Potentials.Default.ResistMin
scoreboard players operation _ ResistMin -= _ _
scoreboard players operation _ Calc += _ ResistMin

scoreboard players operation _ AuraRate = @s AuraRate
execute store result score _ _ run data get storage tusb_player: Potentials.Default.AuraRate
scoreboard players operation _ AuraRate -= _ _
scoreboard players operation _ Calc += _ AuraRate

scoreboard players operation _ IntervalRate = @s IntervalRate
execute store result score _ _ run data get storage tusb_player: Potentials.Default.IntervalRate
scoreboard players operation _ IntervalRate -= _ _
scoreboard players set _ _ -1
scoreboard players operation _ IntervalRate *= _ _
scoreboard players set _ _ 2
scoreboard players operation _ IntervalRate /= _ _
scoreboard players operation _ Calc += _ IntervalRate

scoreboard players operation _ MPCostRate = @s MPCostRate
execute store result score _ _ run data get storage tusb_player: Potentials.Default.MPCostRate
scoreboard players operation _ MPCostRate -= _ _
scoreboard players set _ _ -1
scoreboard players operation _ MPCostRate *= _ _
scoreboard players operation _ Calc += _ MPCostRate

scoreboard players operation _ Calc += @s AddKnight
scoreboard players operation _ Calc += @s AddNinja
scoreboard players operation _ Calc += @s AddHunter
scoreboard players operation _ Calc += @s AddWhiteMage
scoreboard players operation _ Calc += @s AddBlackMage
scoreboard players operation _ Calc += @s AddSummoner
scoreboard players operation _ Calc += @s AddPuppetMaster
scoreboard players operation _ Calc += @s AddThief
