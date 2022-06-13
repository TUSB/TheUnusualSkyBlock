###詠唱演出
execute if data storage mob_data: ExecutingAction{Stage:3} positioned ~ ~0.5 ~ run function makeup:skill/enemy/delay_action/cast/normal/particle/
execute if data storage mob_data: ExecutingAction{Stage:2} positioned ~ ~1.0 ~ run function makeup:skill/enemy/delay_action/cast/normal/particle/
execute if data storage mob_data: ExecutingAction{Stage:1} positioned ~ ~1.5 ~ run function makeup:skill/enemy/delay_action/cast/normal/particle/
data modify storage mob_data: ExecutingAction.NextAction set value 5