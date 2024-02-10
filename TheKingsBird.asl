state("TheKingsBird")
{
	int sceneId : 0x01051BD8, 0x4, 0x4, 0x74;
	int sceneLoad : 0x01051BD8, 0x4, 0x4, 0x78;
	int birdCount : 0x00FFE708, 0x8, 0x18, 0x10, 0x8, 0x54, 0x4E4, 0x28;
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
	
	vars.CagedDream = 2;
	vars.CagedKingdom = 3;
	vars.ForestTutorial = 4;
	vars.TheOuterForest = 5;
	vars.ForestKingdom = 6;
	vars.QuietValleyWoods = 7;
	vars.TwinTreeVillage = 8;
	vars.RootSlides = 9;
	vars.ForestEdge = 10;
	vars.TheHollow = 11;
	vars.CliffdropWoods = 12;
	vars.AbandonedMarket = 15;
	vars.WildOrchard = 16;
	vars.HiddenVillage = 13;
	vars.ThornyGrove = 14;
	vars.DrippingVineWoods = 17;
	vars.HighCanopy = 21;
	vars.FoggyForest = 18;
	vars.Briar = 19;
	vars.TheGrotto = 20;
	vars.BranchstepWoods = 22;
	vars.RootCaverns = 25;
	vars.MangroveVillage = 26;
	vars.AncientTreeClimb = 23;
	vars.RedwoodBranches = 24;
	vars.CarvedEarthWoods = 27;
	vars.Swamplands = 31;
	vars.Underbrush = 28;
	vars.LoamyGardens = 29;
	vars.ShadedMire = 30;
	vars.OwlShrine = 32;
	vars.ForestDream = 100;
	vars.LakeKingdom = 33;
	vars.RiverwaysDistrict = 74;
	vars.UndergroundStream = 78;
	vars.TheOldCity = 75;
	vars.FloodedVillage = 77;
	vars.OvergrownRuins = 76;
	vars.ScholarsDistrict = 84;
	vars.TheAcademy = 87;
	vars.TunnelLabyrinth = 86;
	vars.Colonnade = 85;
	vars.Rooftops = 88;
	vars.WallsideDistrict = 79;
	vars.PlazaRuins = 81;
	vars.WaterfallMountains = 82;
	vars.LakesideSlides = 83;
	vars.TheCistern = 80;
	vars.ShadesDistrict = 95;
	vars.CrumbledChurch = 98;
	vars.TheVault = 96;
	vars.CliffsideCavern = 99;
	vars.CrystalCave = 97;
	vars.GreenhouseDistrict = 89;
	vars.LakeCastle = 94;
	vars.TheLibrary = 92;
	vars.WildCourtyards = 90;
	vars.Acropolis = 93;
	vars.CliffGallery = 91;
	vars.HeronShrine = 34;
	vars.LakeDream = 73;
	vars.SkyKingdom = 35;
	vars.SunriseGateIsles = 68;
	vars.TheCascades = 71;
	vars.LiftedArches = 72;
	vars.TheLowerCity = 70;
	vars.FallenTowers = 69;
	vars.PromenadeIsles = 48;
	vars.RoyalGarden = 51;
	vars.IslandHamlet = 52;
	vars.TheColosseum = 50;
	vars.Aqueducts = 49;
	vars.KeystoneIsles = 53;
	vars.GrandPortico = 54;
	vars.TheOutskirts = 56;
	vars.CollapsedBridge = 57;
	vars.PrisonMines = 55;
	vars.ForgottenIsles = 58;
	vars.FoggyWindmills = 61;
	vars.TheAgora = 62;
	vars.RuinedCitadel = 60;
	vars.HangingGardens = 59;
	vars.BuriedIsles = 63;
	vars.CrumblingWells = 65;
	vars.WindmillGraveyard = 64;
	vars.TheGorge = 67;
	vars.TheRoosts = 66;
	vars.EagleShrine = 36;
	vars.SkyDream = 37;
	vars.FallenKingdom = 38;
	vars.FallenSkyKingdom = 39;
	vars.FallenLakeKingdom = 40;
	vars.FallenForestKingdom = 41;
	vars.FallenCagedKingdom = 42;
	vars.KingCutscene = 47;
	vars.BossFight = 43;
	vars.FinalChoice = 44;
	vars.CageCredits = 45;
	vars.CloakCredits = 46;

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
        	vars.Swamplands,        vars.Underbrush,         vars.LoamyGardens,     vars.ShadedMire,      0,

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
		24, 20, 13, 24, 0,
		12, 16, 14, 23, 0,
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
		if((old.sceneLoad == 1 || old.sceneId != vars.CagedDream)
		&& current.sceneLoad == 2
		&& current.sceneId == vars.CagedDream)
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
