
#付与する弱点をランダムに選択
function skill:burst/summoner/element/choice

scoreboard players set # ElementFire 300
scoreboard players set # ElementIce 300
scoreboard players set # ElementLightning 300
scoreboard players set # ElementLight 300
scoreboard players set # ElementDark 300

bossbar add skill:burst_summoner ""
bossbar set skill:burst_summoner color white
bossbar set skill:burst_summoner players @a
bossbar set skill:burst_summoner visible true
bossbar set skill:burst_summoner style progress
bossbar set skill:burst_summoner color green
bossbar set skill:burst_summoner max 5000
function skill:burst/summoner/element/bossbar
