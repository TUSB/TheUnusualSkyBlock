##############################
### エンティティ削除
##############################

# 忍者スキル - 介錯
execute if entity @s[tag=KaishakuExplosion] at @s if entity @a[distance=..10] run function skill:act/ninja/kaishaku/say

execute if entity @s[tag=CallOnDeath] at @s run function enemy:ai/call/trigger/death
data merge entity @s[tag=Garbage] {Size:0,DeathTime:19s,HandItems:[{},{}],ArmorItems:[{},{},{},{}]}
kill @s[tag=Garbage]
