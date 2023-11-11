state("julius") {
	int victory : "julius.exe", 0x2E3324;
	int requiredPopulation : "julius.exe", 0x530D9C;
	int peaceLevel : "julius.exe", 0x534254;
	int prosperityLevel : "julius.exe", 0x2E2FD0;
	byte population : "julius.exe", 0x2E0770;
	int gameStarted : "julius.exe", 0x5338A0;
}

init {
	vars.baseProsperity = 101;
}

start {
	vars.baseProsperity = current.prosperityLevel;
	print("[ASL] " + timer.CurrentSplitIndex);

	return current.population == 0 && current.gameStarted == 1 && current.peaceLevel == 0 && current.victory == 0;
}

split {
	return current.gameStarted == 0 && current.victory == 1 && old.victory == 0;
}