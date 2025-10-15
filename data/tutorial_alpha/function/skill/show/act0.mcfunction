tellraw @s ["",{"translate":"[チュートリアル：%1$s]","bold":true,"with":[{"translate":"スキルの確認"}]},"\n",{"translate":"メニューを表示した後、%1$sをクリックするとスキルメニューが開く。\n一番上の段に各職業のアイコン%2$s、共通スキルアイコン%3$s、ショートカットアイコン%4$sが表示されている。\n各職業のアイコンをクリックして、覚えているスキルを表示させてみよう。\nチュートリアルに限り特別に全職業がLv25になっているため、\nLv25までに覚えられるスキルが表示される。","with":[{"translate":"・スキル","bold":true,"clickEvent": {"action": "run_command","value": "/trigger ChangeSkill set 1"}},{"text":"KNHWBS","font":"icon","color":"aqua"},{"text":"C","font":"icon","color":"aqua"},{"text":"✦","color":"light_purple"}]}]

trigger ChangeSettings set 0

function makeup:tutorial_alpha/sound