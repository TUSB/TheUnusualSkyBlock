function oh_my_dat:please
data modify storage mob_data: AI set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI

#死亡時のcall

#時間でのcall
execute if data storage mob_data: AI.Time if data entity @s {PortalCooldown:0} run function entity:enemy/call/time