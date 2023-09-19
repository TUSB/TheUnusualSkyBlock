
#バーストゲージ超過で減少量増加
scoreboard players operation _ Burst = $World Burst
execute store result score _ _ run bossbar get skill:burst max
scoreboard players set _ Calc 3
scoreboard players operation _ _ /= _ Calc
scoreboard players operation _ Burst /= _ _
scoreboard players operation $World Burst -= _ Burst

scoreboard players remove $World Burst 1

function skill:burst/bossbar
