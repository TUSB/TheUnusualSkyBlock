tellraw @s ["",{"translate":"[チュートリアル：%1$s]","bold":true,"with":[{"translate":"チャットログの使い方"}]},"\n",{"translate":"%1$sボタンを押してチャット入力画面にしたとき、\nチャットログのテキストにカーソルを合わせてメッセージを表示させたり\nチャットログのテキストをクリックすることでコマンドを実行することができます。","with":[{"keybind":"key.chat"}]}]

# clickEventお試し
function tutorial_alpha:click_event/reset
tellraw @s ["\n",{"translate":"➀ %1$sボタンでチャット入力画面を開く。\n➁ ここにカーソルを合わせる。\n➂ クリックしてみる。","bold":true,"color":"light_purple","with":[{"keybind":"key.chat"}],"hoverEvent":{"action":"show_text","contents":{"translate":"このようにメッセージが表示されます。\nクリックしてみましょう。"}},"clickEvent":{"action":"run_command","value":"/trigger Tutorial.clickEvent set 1"}},"\n"]
summon marker ~ ~ ~ {Tags:[Tutorial.clickEvent]}
schedule function tutorial_alpha:click_event/loop 1t replace
scoreboard objectives add Tutorial.clickEvent trigger
scoreboard players set @s Tutorial.clickEvent 0
scoreboard players enable @s Tutorial.clickEvent

function makeup:tutorial_alpha/sound