##############################
### クエスト達成処理
##############################

###石消去
clear @s stone 64

###必須処理
tag @s remove Quest1_Ongoing
scoreboard players set $1 QuestState 2

###---演出---Start
playsound entity.player.levelup master @s ~ ~ ~ 1 2
tellraw @a ["",{"selector":"@s"},{"text":"がクエスト「"},{"text":"テスト","hoverEvent":{"action":"show_text","value":["",{"text":"クエスト名：テスト\n説明：医師「どうしても石が欲しい！ｗ」←強い意志\n達成条件：石を64個納品する"}]}},{"text":"」を達成しました。"}]
###---演出---End