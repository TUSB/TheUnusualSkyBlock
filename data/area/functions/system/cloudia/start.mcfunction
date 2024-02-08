
# チュートリアルモードのチェック
function #oh_my_dat:please
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].tutorial_alpha run function tutorial_alpha:system/issue_178

execute if entity @s[scores={Job=1..}] run function area:jump_to/skylands/

execute unless entity @s[scores={Job=1..}] run function area:system/cloudia/no_job

effect give @s[advancements={area:jump_to/cloudia/start={india=true}}] slow_falling 1 0 true

advancement revoke @s only area:jump_to/cloudia/start
