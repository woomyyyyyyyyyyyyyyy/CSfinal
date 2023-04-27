public void togglePauseResume() {
  if (state == State.PAUSED) {
    resumeGame();
  } else {
    pauseGame();
  }
}

public void pauseGame() {
  state = State.PAUSED;
  timeElapsed += millis() - runningTimerStart;
  message = 9;
}

public void resumeGame() {
  state = State.PLAYING;
  runningTimerStart = millis();
  message = 10;
}

void showTimer() {
  textFont(timerFont);
  fill(TIMER_FILL);
  // If the game is paused, show time elapsed
  // If the game is over, show time to complete
  // Otherwise, show time elapsed so far in current game
  if (state == State.PAUSED) {
    text("Time: " + timeElapsed/1000, TIMER_LEFT_OFFSET, TIMER_TOP_OFFSET);
  } else if (state == State.GAME_OVER) { 
    text("Time: " + (runningTimerEnd - runningTimerStart + timeElapsed)/1000, TIMER_LEFT_OFFSET, TIMER_TOP_OFFSET);
  } else {
    text("Time: " + (millis() - runningTimerStart + timeElapsed)/1000, TIMER_LEFT_OFFSET, TIMER_TOP_OFFSET);
  }
}
//calculates timerScore based on player finished time
public void timerScore() {
  if (grid.isGameOver()){
    //gives player 5 points per second under 300
    if (max(timeElapsed / 1000,  300) == 300){
      score += 5 * (300 - timeElapsed / 1000); 
    }
  }
}
