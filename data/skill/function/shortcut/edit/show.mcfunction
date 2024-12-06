### ショートカット編集用GUI表示

function #oh_my_dat:please
function skill:shortcut/gui/

data modify entity @e[tag=SkillShortcut,tag=!Initialized,distance=..0.01,limit=1] CustomName set value '{"translate":"<編集モード>","color":"light_purple"}'
execute as @e[tag=SkillShortcut,tag=!Initialized,distance=..3] run data modify entity @s Duration set value 6000

scoreboard players set @s SkillShortcut 6000

tellraw @s [{"translate":"・ショートカットを編集","bold":true,"color":"light_purple"},{"text":"   "},{"translate":"<<編集終了>>","color":"gold","clickEvent":{"action":"run_command","value":"/trigger ChangeSkill set 10001"}}]
tellraw @s [{"translate":"カーソルを合わせてチャット欄のスキルをクリック！","bold":true}]
