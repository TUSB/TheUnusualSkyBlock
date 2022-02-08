
### クリスタルFireパーティクル

function makeup:skill/act/summoner/call_crystal_attack/tick/fire

execute if score @s SkillAttribute matches 101..109 if data entity @s {PortalCooldown:40} run function skill:act/summoner/call_crystal_attack/attack/fire
execute if score @s SkillAttribute matches 201..209 if data entity @s {PortalCooldown:40} run function skill:act/summoner/call_crystal_enhance/enhance/fire
execute if data entity @s {PortalCooldown:0} run function skill:act/summoner/call_crystal_attack/return/common
