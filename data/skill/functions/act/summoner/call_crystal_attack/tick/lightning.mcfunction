
### クリスタルLightningパーティクル

function makeup:skill/act/summoner/call_crystal_attack/tick/lightning

execute if score @s SkillAttribute matches 101..109 if data entity @s {PortalCooldown:40} run function skill:act/summoner/call_crystal_attack/attack/lightning
execute if score @s SkillAttribute matches 201..209 if data entity @s {PortalCooldown:40} run function skill:act/summoner/call_crystal_enhance/enhance/lightning
execute if data entity @s {PortalCooldown:0} run function skill:act/summoner/call_crystal_attack/return/common
