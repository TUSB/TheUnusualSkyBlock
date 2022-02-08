###詠唱演出
execute if data storage mob_data: ExecutingCast{Stage:3} positioned ~ ~0.5 ~ run function makeup:skill/enemy/casting/cast/normal/particle/
execute if data storage mob_data: ExecutingCast{Stage:2} positioned ~ ~1.0 ~ run function makeup:skill/enemy/casting/cast/normal/particle/
execute if data storage mob_data: ExecutingCast{Stage:1} positioned ~ ~1.5 ~ run function makeup:skill/enemy/casting/cast/normal/particle/
data modify storage mob_data: ExecutingCast.NextAction set value 5