#現在の職業の一覧を表示
scoreboard players operation @s ChangeSkill = @s Job
scoreboard players set _ _ 1000
scoreboard players operation @s ChangeSkill *= _ _
#無職の時は共通スキルを表示
scoreboard players set @s[scores={ChangeSkill=0}] ChangeSkill 9000
