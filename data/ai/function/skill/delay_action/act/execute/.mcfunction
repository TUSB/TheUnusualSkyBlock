#> ai:skill/delay_action/act/execute/
###Dataの参照、書き換えはExecutingActionから行う
execute if data storage mob_data: ExecutingAction{Tags:[Casting]} run function ai:skill/delay_action/act/execute/casting/
execute if data storage mob_data: ExecutingAction{Tags:[Affect]} run function ai:skill/delay_action/act/execute/affect/
execute if data storage mob_data: ExecutingAction{Tags:[Enemy]} run function ai:skill/delay_action/act/execute/enemy/


###共通処理
function ai:skill/delay_action/act/execute/common
