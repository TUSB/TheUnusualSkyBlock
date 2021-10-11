
### 介錯サヨナラ処理２

function makeup:skill/act/ninja/kaishaku/explode2

###爆発ダメージ付与 MobHPMax / 100 ダメージ ジッサイツヨイ
scoreboard players operation _ Damage = @s HPMax
scoreboard players set _ _ 10
scoreboard players operation _ Damage /= _ _
scoreboard players operation @e[distance=..5,tag=Mob] Damage > _ Damage
