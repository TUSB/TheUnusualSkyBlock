#Function
# 周りに敵が200体以上いたら湧かさない
execute store result score _ _ if entity @e[tag=Enemy,distance=..64]
execute if score _ _ matches ..200 run function settings:enemy/skylands/sky/summon/combat_summoner/summon_combat2
