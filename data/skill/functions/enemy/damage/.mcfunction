#MPの吸収量を初期化
scoreboard players set _ MPMax 0

#各種ダメージを初期化
data modify storage skill: Damage set value {Physical:0,Fire:0,Ice:0,Lightning:0,Light:0,Dark:0}
function skill:damage/add/skill/normal
data modify storage score_damage: Argument set value {Damage:0d}

# Enemyへダメージ
execute if data storage mob_data: Call.Mob run function skill:enemy/damage/mob

# FriendlyかつEnemyに対して二重付与しないように初期化
data modify storage skill: Damage set value {Physical:0,Fire:0,Ice:0,Lightning:0,Light:0,Dark:0}
function skill:damage/add/skill/normal

# Friendlyへダメージ
execute if data storage mob_data: Call.Player run function skill:enemy/damage/player

# 爆発
execute if data storage mob_data: Call.Explosion run function skill:enemy/damage/explosion

#MPを吸収
scoreboard players operation @s MP += _ MPMax
scoreboard players operation @s MP < @s MPMax
