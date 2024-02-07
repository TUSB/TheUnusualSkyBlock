#> debug:tusb_memory_plus/add
#
# as item[limit=1] at @s run this_funciton
#

tag @s add TUSBMemory_Adding
data modify entity @s PickupDelay set value 32767s

data remove storage skill: TUSBM

tellraw @p [{"text":"","color":"green"},{"text":"職業選択","color":"white"},"  ",{"text":" K ","font":"icon","clickEvent":{"action": "run_command","value": "/data modify storage skill: TUSBM.Job set value '剣士'"}},{"text":" N ","font":"icon","clickEvent":{"action": "run_command","value": "/data modify storage skill: TUSBM.Job set value '忍者'"}},{"text":" H ","font":"icon","clickEvent":{"action": "run_command","value": "/data modify storage skill: TUSBM.Job set value '狩人'"}},{"text":" W ","font":"icon","clickEvent":{"action": "run_command","value": "/data modify storage skill: TUSBM.Job set value '白魔導士'"}},{"text":" B ","font":"icon","clickEvent":{"action": "run_command","value": "/data modify storage skill: TUSBM.Job set value '黒魔導士'"}},{"text":" S ","font":"icon","clickEvent":{"action": "run_command","value": "/data modify storage skill: TUSBM.Job set value '召喚士'"}},{"text":" P ","font":"icon","clickEvent":{"action": "run_command","value": "/data modify storage skill: TUSBM.Job set value '絡繰士'"}},{"text":" T ","font":"icon","clickEvent":{"action": "run_command","value": "/data modify storage skill: TUSBM.Job set value '怪盗'"}},{"text":" C ","font":"icon","clickEvent":{"action": "run_command","value": "/data modify storage skill: TUSBM.Job set value '共通1'"}},{"text":" C ","font":"icon","clickEvent":{"action": "run_command","value": "/data modify storage skill: TUSBM.Job set value '共通2'"}},{"text":" 削除 ","color":"red","clickEvent":{"action": "run_command","value": "/data modify storage skill: TUSBM.Job set value '削除'"}}]

schedule function debug:tusb_memory_plus/check 1t
