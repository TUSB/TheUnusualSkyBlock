
#バーストゲージ超過で減少量増加
scoreboard players operation _ Burst = $World Burst
scoreboard players set _ Calc 100
scoreboard players operation _ Burst /= _ Calc
scoreboard players operation $World Burst -= _ Burst

scoreboard players remove $World Burst 1

function skill:burst/bossbar
