##############################
### クエスト達成処理
##############################

###必須処理
tag @s remove Quest1_Ongoing
scoreboard players set $1 QuestState 2

###---演出---Start
playsound entity.player.levelup master @s ~ ~ ~ 1 2
tellraw @a ["",{"selector":"@s"},{"text":"がクエスト「"},{"text":"はじめてのクエスト","hoverEvent":{"action":"show_text","value":["",{"text":"はじめてのクエスト\n","bold":true},{"text":"説明：クエストを受注してみよう！\n達成条件：なし"}]}},{"text":"」を達成しました。"}]
###---演出---End