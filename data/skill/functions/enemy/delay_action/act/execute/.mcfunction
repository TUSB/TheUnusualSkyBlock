###Dataの参照、書き換えはExecutingActionから行う
execute if data storage mob_data: ExecutingAction{Tags:[Casting]} run function skill:enemy/delay_action/act/execute/casting/
execute if data storage mob_data: ExecutingAction{Tags:[Affect]} run function skill:enemy/delay_action/act/execute/affect/


###共通処理
function skill:enemy/delay_action/act/execute/common