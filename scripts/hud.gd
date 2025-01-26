extends CanvasLayer

func update_score1():
	var current_score = int($ScoreLabel.text)
	$ScoreLabel.text = str(current_score + 1)
	
func update_score2():
	var current_score = int($ScoreLabel2.text)
	$ScoreLabel2.text = str(current_score + 1)
