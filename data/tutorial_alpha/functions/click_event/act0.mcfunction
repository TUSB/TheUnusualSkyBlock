tellraw @a[distance=..7] ["",{"translate":"[チュートリアル：%1$s]","bold":true,"with":[{"translate":"チャットログの使い方"}]},"\n",{"translate":"%1$sボタンを押してチャット入力画面にしたとき、\nチャットログのテキストにカーソルを合わせるとメッセージを表示させたり\nチャットログのテキストをクリックすることでコマンドを実行することができる。","with":[{"keybind":"key.chat"}]}]

tellraw @a[distance=..7] ["\n",{"translate":"➀ %1$sボタンでチャット入力画面を開く。\n➁ ここにカーソルを合わせる。\n➂ クリックしてみる。","bold":true,"color":"light_purple","hoverEvent":{"action":"show_text","contents":{"translate":"このようにメッセージが表示される。\nクリックしてみよう。"}},"clickEvent":{"action":"run_command","value":"/me はチャットログの使い方を覚えた！"}},"\n"]

function makeup:tutorial_alpha/sound