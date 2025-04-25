# 登録 Stageがフレーム数、NextActionがtick表示間隔
data modify storage mob_data: AddingAction set value {Stage:30,NextAction:1}
# 演出
function makeup:skill/enemy/delay_action/casting/cast/normal/sound/portal_travel