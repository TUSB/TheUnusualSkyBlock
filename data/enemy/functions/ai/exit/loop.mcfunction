#Loopによるexit
data modify storage mob_data: AI.Turn[0].Exit.Loop.Current set from storage mob_data: AI.Turn[0].Exit.Loop.Max
function enemy:ai/exit/exit
