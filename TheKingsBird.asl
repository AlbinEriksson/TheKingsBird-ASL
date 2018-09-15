state("TheKingsBird")
{
	int sceneId : 0x01051BD8, 0x4, 0x4, 0x74;
	int sceneLoad : 0x01051BD8, 0x4, 0x4, 0x78;
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
	vars.OwlShrine = 26;
	vars.ForestDream = 85;
	vars.LakeKingdom = 27;
	vars.RiverwaysDistrict = 64;
	vars.UndergroundStream = 68;
	vars.TheOldCity = 65;
	vars.FloodedVillage = 67;
	vars.OvergrownRuins = 66;
	vars.ScholarsDistrict = 74;
	vars.TheAcademy = 77;
	vars.TunnelLabyrinth = 76;
	vars.Colonnade = 75;
	vars.Rooftops = 78;
	vars.WallsideDistrict = 69;
	vars.PlazaRuins = 71;
	vars.WaterfallMountains = 72;
	vars.LakesideSlides = 73;
	vars.TheCistern = 70;
	vars.ShadesDistrict = 80;
	vars.CrumbledChurch = 83;
	vars.TheVault = 81;
	vars.CliffsideCavern = 84;
	vars.CrystalCave = 82;
	vars.HeronShrine = 28;
	vars.LakeDream = 63;
	vars.SkyKingdom = 29;
	vars.SunriseGateIsles = 58;
	vars.TheCascades = 61;
	vars.LiftedArches = 62;
	vars.TheLowerCity = 60;
	vars.FallenTowers = 59;
	vars.PromenadeIsles = 42;
	vars.RoyalGarden = 45;
	vars.IslandHamlet = 46;
	vars.TheColosseum = 44;
	vars.Aqueducts = 43;
	vars.KeystoneIsles = 47;
	vars.GrandPortico = 48;
	vars.TheOutskirts = 50;
	vars.CollapsedBridge = 51;
	vars.PrisonMines = 49;
	vars.ForgottenIsles = 52;
	vars.FoggyWindmills = 55;
	vars.TheAgora = 56;
	vars.RuinedCitadel = 54;
	vars.HangingGardens = 53;
	vars.EagleShrine = 30;
	vars.SkyDream = 31;
	vars.FallenKingdom = 32;
	vars.FallenSkyKingdom = 33;
	vars.FallenLakeKingdom = 34;
	vars.FallenForestKingdom = 35;
	vars.FallenCagedKingdom = 36;
	vars.KingCutscene = 41;
	vars.BossFight = 37;
	vars.FinalChoice = 38;
	vars.CageCredits = 39;
	vars.CloakCredits = 40;

	vars.Kingdoms = new int[] {vars.ForestKingdom, vars.LakeKingdom, vars.SkyKingdom};
	vars.FallenKingdoms = new int[] {
		vars.FallenSkyKingdom, vars.FallenLakeKingdom, vars.FallenForestKingdom, vars.FallenCagedKingdom
	};
	vars.Shrines = new int[] {vars.OwlShrine, vars.HeronShrine, vars.EagleShrine};
	vars.Dreams = new int[] {vars.ForestDream, vars.LakeDream, vars.SkyDream};
	vars.Hubs = new int[] {
		vars.QuietValleyWoods,  vars.CliffdropWoods,   vars.DrippingVineWoods, vars.BranchstepWoods,
		vars.RiverwaysDistrict, vars.ScholarsDistrict, vars.WallsideDistrict,  vars.ShadesDistrict,
		vars.SunriseGateIsles,  vars.PromenadeIsles,   vars.KeystoneIsles,     vars.ForgottenIsles
	};
	vars.Levels = new int[] {
		vars.TwinTreeVillage,   vars.RootSlides,         vars.ForestEdge,       vars.TheHollow,
		vars.AbandonedMarket,   vars.WildOrchard,        vars.HiddenVillage,    vars.ThornyGrove,
		vars.HighCanopy,        vars.FoggyForest,        vars.Briar,            vars.TheGrotto,
		vars.RootCaverns,       vars.MangroveVillage,    vars.AncientTreeClimb, vars.RedwoodBranches,

		vars.UndergroundStream, vars.TheOldCity,         vars.FloodedVillage,   vars.OvergrownRuins,
		vars.TheAcademy,        vars.TunnelLabyrinth,    vars.Colonnade,        vars.Rooftops,
		vars.PlazaRuins,        vars.WaterfallMountains, vars.LakesideSlides,   vars.TheCistern,
		vars.CrumbledChurch,    vars.TheVault,           vars.CliffsideCavern,  vars.CrystalCave,

		vars.TheCascades,       vars.LiftedArches,       vars.TheLowerCity,     vars.FallenTowers,
		vars.RoyalGarden,       vars.IslandHamlet,       vars.TheColosseum,     vars.Aqueducts,
		vars.GrandPortico,      vars.TheOutskirts,       vars.CollapsedBridge,  vars.PrisonMines,
		vars.FoggyWindmills,	vars.TheAgora,           vars.RuinedCitadel,    vars.HangingGardens
	};

	vars.VisitedHubs = new bool[12];
	vars.FirstLevels = new bool[12];
	
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
		vars.VisitedHubs = new bool[12];
		vars.FirstLevels = new bool[12];
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
			if(toHub >= 0 && !vars.VisitedHubs[toHub] && toHub / 4 == fromKingdom)
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

			if(toLevel >= 0 && toLevel / 4 == fromHub
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
			if(toHub >= 0 && fromLevel / 4 == toHub)
			{
				vars.Debug("Exited/finished level.");
				return true;
			}
		}
	}
	
	if(settings["HubEnd"])
	{
		int fromHub = Array.IndexOf(vars.Hubs, old.sceneId);
		if(fromHub >= 0)
		{
			int toKingdom = Array.IndexOf(vars.Kingdoms, current.sceneId);
			if(toKingdom >= 0 && fromHub / 4 == toKingdom)
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
