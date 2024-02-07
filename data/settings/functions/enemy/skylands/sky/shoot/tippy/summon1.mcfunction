#Function
#周囲に自身が10体以上いる場合は召喚しない
execute store result score _ _ if entity @e[tag=TippyCount,distance=..32]
execute if score _ _ matches ..9 run function settings:enemy/skylands/sky/shoot/tippy/summon2
