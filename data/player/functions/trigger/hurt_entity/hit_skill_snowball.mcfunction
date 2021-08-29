### 投射物による攻撃

#雪玉をkill
execute at @e[tag=Mob,nbt=!{AbsorptionAmount:1000000f}] run kill @e[tag=SkillSnowball,sort=nearest,limit=1]
kill @e[tag=SkillSnowball,sort=nearest,limit=1]
#トリガーリセット
advancement revoke @s only player:trigger/hurt_entity/hit_skill_snowball
