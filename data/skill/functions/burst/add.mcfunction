
# バースト増加量 取得
function settings:skill/burst/add

scoreboard players operation $World Burst += _ Burst
function skill:burst/bossbar
function makeup:skill/burst/get
