tellraw @s ["",{"translate":"[チュートリアル：%1$s]","bold":true,"with":[{"translate":"スキルの確認"}]},"\n",{"translate":"メニューを表示した後、%1$sをクリックする。\nスキルメニューが開く。一番上の段に\n各職業のアイコン%2$s、共通スキルアイコン%3$s、ショートカットアイコン%4$sが表示されている。\n各職業のアイコンをクリックすると、覚えているスキルが表示されるので、確認してみよう。\nチュートリアルに限り特別に全職業がLv25になっているため、\nLv25までに覚えられるスキルが表示される。","with":[{"translate":"・スキル","bold":true,"clickEvent": {"action": "run_command","value": "/trigger ChangeSkill set 1"}},{"text":"KNHWBS","font":"icon","color":"aqua"},{"text":"C","font":"icon","color":"aqua"},{"text":"✦","color":"light_purple"}]},"\n"]

trigger ChangeSettings set 0

function makeup:tutorial_alpha/sound