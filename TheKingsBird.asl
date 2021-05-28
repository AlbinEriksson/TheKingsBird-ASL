state("TheKingsBird")
{
	int sceneId : 0x01051BD8, 0x4, 0x4, 0x74;
	int sceneLoad : 0x01051BD8, 0x4, 0x4, 0x78;
	int birdCount : 0x01006E78, 0x198, 0x90C, 0x438, 0x14, 0x14C, 0xFC8;
}

startup
{
	settings.Add("AutoStart", true, "Start timer when restarting your save file");
	settings.Add("AutoStartChapter", false, "Start timer when backtracking from a shrine (For individual kingdom runs)");
	settings.Add("CagedDreamEnd", true, "Split after the introduction dream");
	settings.Add("CagedKingdomEnd", true, "Split after leaving the caged kingdom");
	settings.Add("ForestTutorialEnd", true, "Split after finishing the forest tutorial");
	settings.Add("NewHub", false, "Split when entering a new hub");
	settings.Add("FirstHubLevel", false, "Split when entering your first level in a hub");
	settings.Add("AllHubLevels", false, "Split when entering any new level", "FirstHubLevel");
	settings.Add("LevelEnd", true, "Split when exiting/finishing a level");
	settings.Add("LevelEndWithBirds", false, "Split when finishing a level with all spirit birds", "LevelEnd");
	settings.Add("HubEnd", false, "Split when leaving a hub");
	settings.Add("ShrineEnter", false, "Split when entering a shrine (through left entrance)");
	settings.Add("ShrineDreamEnter", false, "Split when a shrine dream starts");
	settings.Add("ShrineDreamEnd", true, "Split when finishing a shrine dream");
	settings.Add("ShrineEnd", false, "Split when leaving a shrine (through right exit)");
	settings.Add("FallenEnter", false, "Split when entering the fallen kingdom");
	settings.Add("FallenExit", true, "Split when exiting/finishing the fallen kingdom");
	settings.Add("FallenCaged", false, "Split when entering the fallen caged kingdom");
	settings.Add("FallenKingdoms", false, "Split after all of the fallen kingdoms", "FallenCaged");
	settings.Add("KingCutscene", false, "Split when the king cutscene starts playing");
	settings.Add("BossFightEnter", true, "Split when entering the boss fight");
	settings.Add("BossFightEnd", false, "Split when finishing the boss fight");
	settings.Add("Decision", true, "Split after deciding the fate of the kingdom");
	
	vars.CagedDream = 1;
	vars.CagedKingdom = 2;
	vars.ForestTutorial = 3;
	vars.ForestKingdom = 4;
	vars.QuietValleyWoods = 5;
	vars.TwinTreeVillage = 6;
	vars.RootSlides = 7;
	vars.ForestEdge = 8;
	vars.TheHollow = 9;
	vars.CliffdropWoods = 10;
	vars.AbandonedMarket = 13;
	vars.WildOrchard = 14;
	vars.HiddenVillage = 11;
	vars.ThornyGrove = 12;
	vars.DrippingVineWoods = 15;
	vars.HighCanopy = 19;
	vars.FoggyForest = 16;
	vars.Briar = 17;
	vars.TheGrotto = 18;
	vars.BranchstepWoods = 20;
	vars.RootCaverns = 23;
	vars.MangroveVillage = 24;
	vars.AncientTreeClimb = 21;
	vars.RedwoodBranches = 22;
	vars.CarvedEarthWoods = 25;
	vars.Swamplands = 29;
	vars.Underbrush = 26;
	vars.LoamyGardens = 27;
	vars.ShadedMire = 28;
	vars.OwlShrine = 30;
	vars.ForestDream = 98;
	vars.LakeKingdom = 31;
	vars.RiverwaysDistrict = 72;
	vars.UndergroundStream = 76;
	vars.TheOldCity = 73;
	vars.FloodedVillage = 75;
	vars.OvergrownRuins = 74;
	vars.ScholarsDistrict = 82;
	vars.TheAcademy = 85;
	vars.TunnelLabyrinth = 84;
	vars.Colonnade = 83;
	vars.Rooftops = 86;
	vars.WallsideDistrict = 77;
	vars.PlazaRuins = 79;
	vars.WaterfallMountains = 80;
	vars.LakesideSlides = 81;
	vars.TheCistern = 78;
	vars.ShadesDistrict = 93;
	vars.CrumbledChurch = 96;
	vars.TheVault = 94;
	vars.CliffsideCavern = 97;
	vars.CrystalCave = 95;
	vars.GreenhouseDistrict = 87;
	vars.LakeCastle = 92;
	vars.TheLibrary = 90;
	vars.WildCourtyards = 88;
	vars.Acropolis = 91;
	vars.CliffGallery = 89;
	vars.HeronShrine = 32;
	vars.LakeDream = 71;
	vars.SkyKingdom = 33;
	vars.SunriseGateIsles = 66;
	vars.TheCascades = 69;
	vars.LiftedArches = 70;
	vars.TheLowerCity = 68;
	vars.FallenTowers = 67;
	vars.PromenadeIsles = 46;
	vars.RoyalGarden = 49;
	vars.IslandHamlet = 50;
	vars.TheColosseum = 48;
	vars.Aqueducts = 47;
	vars.KeystoneIsles = 51;
	vars.GrandPortico = 52;
	vars.TheOutskirts = 54;
	vars.CollapsedBridge = 55;
	vars.PrisonMines = 53;
	vars.ForgottenIsles = 56;
	vars.FoggyWindmills = 59;
	vars.TheAgora = 60;
	vars.RuinedCitadel = 58;
	vars.HangingGardens = 57;
	vars.BuriedIsles = 61;
	vars.CrumblingWells = 63;
	vars.WindmillGraveyard = 62;
	vars.TheGorge = 65;
	vars.TheRoosts = 64;
	vars.EagleShrine = 34;
	vars.SkyDream = 35;
	vars.FallenKingdom = 36;
	vars.FallenSkyKingdom = 37;
	vars.FallenLakeKingdom = 38;
	vars.FallenForestKingdom = 39;
	vars.FallenCagedKingdom = 40;
	vars.KingCutscene = 45;
	vars.BossFight = 41;
	vars.FinalChoice = 42;
	vars.CageCredits = 43;
	vars.CloakCredits = 44;

	vars.Kingdoms = new int[] {vars.ForestKingdom, vars.LakeKingdom, vars.SkyKingdom};
	vars.FallenKingdoms = new int[] {
		vars.FallenSkyKingdom, vars.FallenLakeKingdom, vars.FallenForestKingdom, vars.FallenCagedKingdom
	};
	vars.Shrines = new int[] {vars.OwlShrine, vars.HeronShrine, vars.EagleShrine};
	vars.Dreams = new int[] {vars.ForestDream, vars.LakeDream, vars.SkyDream};
	vars.Hubs = new int[] {
		vars.QuietValleyWoods,  vars.CliffdropWoods,   vars.DrippingVineWoods, vars.BranchstepWoods, vars.CarvedEarthWoods,
		vars.RiverwaysDistrict, vars.ScholarsDistrict, vars.WallsideDistrict,  vars.ShadesDistrict,  vars.GreenhouseDistrict,
		vars.SunriseGateIsles,  vars.PromenadeIsles,   vars.KeystoneIsles,     vars.ForgottenIsles,  vars.BuriedIsles
	};
	vars.Levels = new int[] {
		vars.TwinTreeVillage,   vars.RootSlides,         vars.ForestEdge,       vars.TheHollow,       0,
		vars.AbandonedMarket,   vars.WildOrchard,        vars.HiddenVillage,    vars.ThornyGrove,     0,
		vars.HighCanopy,        vars.FoggyForest,        vars.Briar,            vars.TheGrotto,       0,
		vars.RootCaverns,       vars.MangroveVillage,    vars.AncientTreeClimb, vars.RedwoodBranches, 0,
        	vars.Swamplands,        vars.Underbrush,         vars.LoamyGardens,      vars.ShadedMire,      0,

		vars.UndergroundStream, vars.TheOldCity,         vars.FloodedVillage,   vars.OvergrownRuins,  0,
		vars.TheAcademy,        vars.TunnelLabyrinth,    vars.Colonnade,        vars.Rooftops,        0,
		vars.PlazaRuins,        vars.WaterfallMountains, vars.LakesideSlides,   vars.TheCistern,      0,
		vars.CrumbledChurch,    vars.TheVault,           vars.CliffsideCavern,  vars.CrystalCave,     0,
        	vars.LakeCastle,        vars.TheLibrary,         vars.WildCourtyards,   vars.Acropolis,       vars.CliffGallery,

		vars.TheCascades,       vars.LiftedArches,       vars.TheLowerCity,     vars.FallenTowers,    0,
		vars.RoyalGarden,       vars.IslandHamlet,       vars.TheColosseum,     vars.Aqueducts,       0,
		vars.GrandPortico,      vars.TheOutskirts,       vars.CollapsedBridge,  vars.PrisonMines,     0,
		vars.FoggyWindmills,	vars.TheAgora,           vars.RuinedCitadel,    vars.HangingGardens,  0,
        	vars.CrumblingWells,    vars.WindmillGraveyard,  vars.TheGorge,         vars.TheRoosts,       0
	};
	vars.TotalBirds = new int[] {
		12, 18, 9, 11, 0,
		24, 16, 8, 8, 0,
		10, 15, 12, 15, 0,
		8, 9, 21, 12, 0,
		6, 13, 7, 9, 0,

		9, 14, 9, 20, 0,
		19, 11, 11, 15, 0,
		12, 16, 14, 23, 0,
		24, 20, 13, 24, 0,
		8, 7, 10, 9, 13,

		19, 18, 6, 25, 0,
		10, 8, 13, 9, 0,
		26, 9, 10, 8, 0,
		24, 7, 9, 9, 0,
		8, 10, 10, 15, 0,
	};

	vars.VisitedHubs = new bool[15];
	vars.FirstLevels = new bool[15];
	
	Action<string> Debug = (text) => {
		print("[The King's Bird Autosplitter] " + text);
	};
	vars.Debug = Debug;
	vars.Debug("Initialized!");
}

start
{
	if(settings["AutoStart"])
	{
		if(old.sceneLoad == 1 && current.sceneLoad == 2 && current.sceneId == 1)
		{
			vars.Debug("Starting run.");
			return true;
		}
	}
	
	if(settings["AutoStartChapter"])
	{
		int fromShrine = Array.IndexOf(vars.Shrines, old.sceneId);
		if(fromShrine >= 0)
		{
			int toKingdom = Array.IndexOf(vars.Kingdoms, current.sceneId);
			if((toKingdom == 0 && fromShrine == 0)
			|| (toKingdom >  0 && fromShrine == toKingdom - 1))
			{
				vars.Debug("Starting individual kingdom run.");
				return true;
			}
		}
	}
	
	return false;
}

update
{
	if(timer.CurrentPhase == TimerPhase.NotRunning)
	{
		vars.VisitedHubs = new bool[15];
		vars.FirstLevels = new bool[15];
	}
	
	return true;
}

isLoading
{
	return current.sceneLoad == 1 || current.sceneLoad == 3;
}

split
{
	if(settings["CagedDreamEnd"])
	{
		if(old.sceneId == vars.CagedDream && current.sceneId == vars.CagedKingdom)
		{
			vars.Debug("Finished caged dream.");
			return true;
		}
	}
	
	if(settings["CagedKingdomEnd"])
	{
		if(old.sceneId == vars.CagedKingdom && current.sceneId == vars.ForestTutorial)
		{
			vars.Debug("Finished caged kingdom.");
			return true;
		}
	}

	if(settings["ForestTutorialEnd"])
	{
		if(old.sceneId == vars.ForestTutorial && current.sceneId == vars.ForestKingdom)
		{
			vars.Debug("Finished forest tutorial.");
			return true;
		}
	}

	if(settings["NewHub"])
	{
		int fromKingdom = Array.IndexOf(vars.Kingdoms, old.sceneId);
		if(fromKingdom >= 0)
		{
			int toHub = Array.IndexOf(vars.Hubs, current.sceneId);
			if(toHub >= 0 && !vars.VisitedHubs[toHub] && toHub / 5 == fromKingdom)
			{
				vars.VisitedHubs[toHub] = true;
				vars.Debug("Entered new hub.");
				return true;
			}
		}
	}
	
	if(settings["FirstHubLevel"])
	{
		int fromHub = Array.IndexOf(vars.Hubs, old.sceneId);
		if(fromHub >= 0)
		{
			int toLevel = Array.IndexOf(vars.Levels, current.sceneId);

			if(toLevel >= 0 && toLevel / 5 == fromHub
			&& (settings["AllHubLevels"] || !vars.FirstLevels[fromHub]))
			{
				vars.Debug("Entered level.");
				vars.FirstLevels[fromHub] = true;
				return true;
			}
		}
	}
	
	if(settings["LevelEnd"])
	{
		int fromLevel = Array.IndexOf(vars.Levels, old.sceneId);
		if(fromLevel >= 0)
		{
			int toHub = Array.IndexOf(vars.Hubs, current.sceneId);
			if(toHub >= 0 && fromLevel / 5 == toHub)
			{
				if(settings["LevelEndWithBirds"])
				{
					int maxBirdCount = vars.TotalBirds[fromLevel];
					if(maxBirdCount == current.birdCount)
					{
						vars.Debug("Finished level with all spirit birds.");
						return true;
					}
				}
				else
				{
					vars.Debug("Exited/finished level.");
					return true;
				}
			}
		}
	}
	
	if(settings["HubEnd"])
	{
		int fromHub = Array.IndexOf(vars.Hubs, old.sceneId);
		if(fromHub >= 0)
		{
			int toKingdom = Array.IndexOf(vars.Kingdoms, current.sceneId);
			if(toKingdom >= 0 && fromHub / 5 == toKingdom)
			{
				vars.Debug("Exited hub.");
				return true;
			}
		}
	}
	
	if(settings["ShrineEnter"])
	{
		int fromKingdom = Array.IndexOf(vars.Kingdoms, old.sceneId);
		if(fromKingdom >= 0)
		{
			int toShrine = Array.IndexOf(vars.Shrines, current.sceneId);
			if(toShrine >= 0 && fromKingdom == toShrine)
			{
				vars.Debug("Entered shrine.");
				return true;
			}
		}
	}
	
	if(settings["ShrineDreamEnter"])
	{
		int fromShrine = Array.IndexOf(vars.Shrines, old.sceneId);
		if(fromShrine >= 0)
		{
			int toDream = Array.IndexOf(vars.Dreams, current.sceneId);
			if(toDream >= 0 && fromShrine == toDream)
			{
				vars.Debug("Entered dream.");
				return true;
			}
		}
	}
	
	if(settings["ShrineDreamEnd"])
	{
		int fromDream = Array.IndexOf(vars.Dreams, old.sceneId);
		if(fromDream >= 0)
		{
			int toShrine = Array.IndexOf(vars.Shrines, current.sceneId);
			if(toShrine >= 0 && fromDream == toShrine)
			{
				vars.Debug("Finished dream.");
				return true;
			}
		}
	}
	
	if(settings["ShrineEnd"])
	{
		int fromShrine = Array.IndexOf(vars.Shrines, old.sceneId);
		if(fromShrine >= 0)
		{
			int toKingdom = Array.IndexOf(vars.Kingdoms, current.sceneId);
			if(toKingdom >= 0 && fromShrine + 1 == toKingdom)
			{
				vars.Debug("Exited shrine.");
				return true;
			}
		}
	}
	
	if(settings["FallenEnter"])
	{
		if(old.sceneId == vars.EagleShrine && current.sceneId == vars.FallenKingdom)
		{
			vars.Debug("Entered fallen kingdom.");
			return true;
		}
	}
	
	if(settings["FallenExit"])
	{
		if(old.sceneId == vars.FallenKingdom && current.sceneId == vars.FallenSkyKingdom)
		{
			vars.Debug("Finished fallen kingdom.");
			return true;
		}
	}
	
	if(settings["FallenCaged"])
	{
		if(settings["FallenKingdoms"])
		{
			int fromKingdom = Array.IndexOf(vars.FallenKingdoms, old.sceneId);
			if(fromKingdom >= 0)
			{
				int toKingdom = Array.IndexOf(vars.FallenKingdoms, current.sceneId);
				if(toKingdom >= 0 && fromKingdom + 1 == toKingdom)
				{
					vars.Debug("Visited fallen kingdom.");
					return true;
				}
			}
		}
		else if(old.sceneId == vars.FallenForestKingdom && current.sceneId == vars.FallenCagedKingdom)
		{
			vars.Debug("Arrived in fallen caged kingdom.");
			return true;
		}
	}
	
	if(settings["KingCutscene"])
	{
		if(old.sceneId == vars.FallenCagedKingdom && current.sceneId == vars.KingCutscene)
		{
			vars.Debug("Entered king cutscene.");
			return true;
		}
	}
	
	if(settings["BossFightEnter"])
	{
		if(old.sceneId == vars.FallenCagedKingdom && current.sceneId == vars.BossFight)
		{
			vars.Debug("Entered boss fight.");
			return true;
		}
	}
	
	if(settings["BossFightEnd"])
	{
		if(old.sceneId == vars.BossFight && current.sceneId == vars.FinalChoice)
		{
			vars.Debug("Finished boss fight.");
			return true;
		}
	}
	
	if(settings["Decision"])
	{
		if(old.sceneId == vars.FinalChoice
		&& (current.sceneId == vars.CageCredits || current.sceneId == vars.CloakCredits))
		{
			vars.Debug("Made decision.");
			return true;
		}
	}
	
	return false;
}
