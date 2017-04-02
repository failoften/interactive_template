void timeDelay(int delayTime)
{
  int time = millis();
  while (millis() - time <= delayTime);
}