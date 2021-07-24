#職業スキルをロード
execute if score @s ChangeSkill matches 1000 run function skill:trigger/tellraw/job/knight
execute if score @s ChangeSkill matches 2000 run function skill:trigger/tellraw/job/ninja
execute if score @s ChangeSkill matches 3000 run function skill:trigger/tellraw/job/hunter
execute if score @s ChangeSkill matches 4000 run function skill:trigger/tellraw/job/white_mage
execute if score @s ChangeSkill matches 5000 run function skill:trigger/tellraw/job/black_mage
execute if score @s ChangeSkill matches 6000 run function skill:trigger/tellraw/job/summoner
execute if score @s ChangeSkill matches 7000 run function skill:trigger/tellraw/job/puppet_master
execute if score @s ChangeSkill matches 8000 run function skill:trigger/tellraw/job/thief
execute if score @s ChangeSkill matches 9000 run function skill:trigger/tellraw/job/common
#職業一覧
data modify block 2 3 2 Text1 set value '[{"text":"<"},{"text":" K ","font":"icon","color":"aqua","clickEvent":{"action":"run_command","value":"/scoreboard players set @s ChangeSkill 1000"},"hoverEvent":{"action":"show_text","contents":[{"text":"剣士"}]}},{"text":"> <"},{"text":" N ","font":"icon","color":"aqua","clickEvent":{"action":"run_command","value":"/scoreboard players set @s ChangeSkill 2000"},"hoverEvent":{"action":"show_text","contents":[{"text":"忍者"}]}},{"text":"> <"},{"text":" H ","font":"icon","color":"aqua","clickEvent":{"action":"run_command","value":"/scoreboard players set @s ChangeSkill 3000"},"hoverEvent":{"action":"show_text","contents":[{"text":"狩人"}]}},{"text":"> <"},{"text":" W ","font":"icon","color":"aqua","clickEvent":{"action":"run_command","value":"/scoreboard players set @s ChangeSkill 4000"},"hoverEvent":{"action":"show_text","contents":[{"text":"白魔道士"}]}},{"text":"> <"},{"text":" B ","font":"icon","color":"aqua","clickEvent":{"action":"run_command","value":"/scoreboard players set @s ChangeSkill 5000"},"hoverEvent":{"action":"show_text","contents":[{"text":"黒魔道士"}]}},{"text":"> <"},{"text":" S ","font":"icon","color":"aqua","clickEvent":{"action":"run_command","value":"/scoreboard players set @s ChangeSkill 6000"},"hoverEvent":{"action":"show_text","contents":[{"text":"召喚士"}]}},{"text":"> <"},{"text":" P ","font":"icon","color":"aqua","clickEvent":{"action":"run_command","value":"/scoreboard players set @s ChangeSkill 7000"},"hoverEvent":{"action":"show_text","contents":[{"text":"絡繰士"}]}},{"text":"> <"},{"text":" T ","font":"icon","color":"aqua","clickEvent":{"action":"run_command","value":"/scoreboard players set @s ChangeSkill 8000"},"hoverEvent":{"action":"show_text","contents":[{"text":"怪盗"}]}},{"text":"> <"},{"text":" C ","font":"icon","color":"aqua","clickEvent":{"action":"run_command","value":"/scoreboard players set @s ChangeSkill 9000"},"hoverEvent":{"action":"show_text","contents":[{"text":"共通"}]}},{"text":">"},{"storage":"skill:","nbt":"NewLine","interpret":true},{"text":"----------------------------------------------------"},{"storage":"skill:","nbt":"NewLine","interpret":true}]'
#習得しているスキル一覧
function skill:trigger/tellraw/loop
#表示
tellraw @s {"block":"2 3 2","nbt":"Text1","interpret":true}
#演出
execute at @s run function makeup:skill/trigger/click
