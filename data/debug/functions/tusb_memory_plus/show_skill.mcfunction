#> debug:tusb_memory_plus/show_skill

# スキルシート同期最終確認 2022/2/14

execute if data storage skill: TUSBM{Job:'剣士'} run function debug:tusb_memory_plus/load_skill/knight
execute if data storage skill: TUSBM{Job:'忍者'} run function debug:tusb_memory_plus/load_skill/ninja
execute if data storage skill: TUSBM{Job:'狩人'} run function debug:tusb_memory_plus/load_skill/hunter
execute if data storage skill: TUSBM{Job:'白魔導士'} run function debug:tusb_memory_plus/load_skill/white_mage
execute if data storage skill: TUSBM{Job:'黒魔導士'} run function debug:tusb_memory_plus/load_skill/black_mage
execute if data storage skill: TUSBM{Job:'召喚士'} run function debug:tusb_memory_plus/load_skill/summoner
execute if data storage skill: TUSBM{Job:'絡繰士'} run function debug:tusb_memory_plus/load_skill/puppet_master
execute if data storage skill: TUSBM{Job:'怪盗'} run function debug:tusb_memory_plus/load_skill/thief
execute if data storage skill: TUSBM{Job:'共通1'} run function debug:tusb_memory_plus/load_skill/common1
execute if data storage skill: TUSBM{Job:'共通2'} run function debug:tusb_memory_plus/load_skill/common2

data modify block 2 3 2 front_text.messages[0] set value '[{"text":"職業選択"},"  ",{"text":" K ","font":"icon","clickEvent":{"action": "run_command","value": "/data modify storage skill: TUSBM.Job set value \'剣士\'"}},{"text":" N ","font":"icon","clickEvent":{"action": "run_command","value": "/data modify storage skill: TUSBM.Job set value \'忍者\'"}},{"text":" H ","font":"icon","clickEvent":{"action": "run_command","value": "/data modify storage skill: TUSBM.Job set value \'狩人\'"}},{"text":" W ","font":"icon","clickEvent":{"action": "run_command","value": "/data modify storage skill: TUSBM.Job set value \'白魔導士\'"}},{"text":" B ","font":"icon","clickEvent":{"action": "run_command","value": "/data modify storage skill: TUSBM.Job set value \'黒魔導士\'"}},{"text":" S ","font":"icon","clickEvent":{"action": "run_command","value": "/data modify storage skill: TUSBM.Job set value \'召喚士\'"}},{"text":" P ","font":"icon","clickEvent":{"action": "run_command","value": "/data modify storage skill: TUSBM.Job set value \'絡繰士\'"}},{"text":" T ","font":"icon","clickEvent":{"action": "run_command","value": "/data modify storage skill: TUSBM.Job set value \'怪盗\'"}},{"text":" C ","font":"icon","clickEvent":{"action": "run_command","value": "/data modify storage skill: TUSBM.Job set value \'共通1\'"}},{"text":" C ","font":"icon","clickEvent":{"action": "run_command","value": "/data modify storage skill: TUSBM.Job set value \'共通2\'"}},{"text":"\\n"}]'

function debug:tusb_memory_plus/show_skill_loop

execute unless data storage skill: TUSBM{Job:'削除'} run tellraw @p [{"block":"2 3 2","nbt":"front_text.messages[0]","interpret":true}]

execute if data storage skill: TUSBM{Job:'削除'} as @e[tag=TUSBMemory_Adding] if data entity @s Item.tag.Skill run function debug:tusb_memory_plus/remove

data remove storage skill: TUSBM.Job
