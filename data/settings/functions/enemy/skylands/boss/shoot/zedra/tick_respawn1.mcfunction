#Function
## アマスタが暫くいなければ召喚
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Respawn run function settings:enemy/skylands/boss/shoot/zedra/tick_respawn2
execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Respawn run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Respawn set value 6
