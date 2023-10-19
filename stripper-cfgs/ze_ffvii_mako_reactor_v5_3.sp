#include <sourcemod>
#include <sdktools>
#include <sdkhooks>

#undef REQUIRE_PLUGIN
#include <zombiereloaded>
#define REQUIRE_PLUGIN

#pragma newdecls required

int g_iModelIndex;

bool g_bRaceEnabled;
bool g_bRaceAutoBhop;
bool g_bRaceBlockInfect;
bool g_bRaceBlockRespawn;

public void OnMapStart()
{
	char sMapname[256];
	GetCurrentMap(sMapname, sizeof(sMapname));

	if (StrEqual(sMapname, "ze_ffvii_mako_reactor_v5_3", false))
	{
		g_iModelIndex = PrecacheModel("models/mapeadores/kaem/sephiroth3/sephiroth.mdl");

		AddFileToDownloadsTable("models/mapeadores/kaem/sephiroth3/sephiroth.mdl");
		AddFileToDownloadsTable("models/mapeadores/kaem/sephiroth3/sephiroth.phy");
		AddFileToDownloadsTable("models/mapeadores/kaem/sephiroth3/sephiroth.vvd");
		AddFileToDownloadsTable("models/mapeadores/kaem/sephiroth3/sephiroth.dx80.vtx");
		AddFileToDownloadsTable("models/mapeadores/kaem/sephiroth3/sephiroth.dx90.vtx");
		AddFileToDownloadsTable("models/mapeadores/kaem/sephiroth3/sephiroth.xbox.vtx");
		AddFileToDownloadsTable("models/mapeadores/kaem/sephiroth3/sephiroth.sw.vtx");

		AddFileToDownloadsTable("materials/mapeadores/kaem/sephiroth3/part1.vmt");
		AddFileToDownloadsTable("materials/mapeadores/kaem/sephiroth3/part1.vtf");
		AddFileToDownloadsTable("materials/mapeadores/kaem/sephiroth3/part2.vmt");
		AddFileToDownloadsTable("materials/mapeadores/kaem/sephiroth3/part2.vtf");
		AddFileToDownloadsTable("materials/mapeadores/kaem/sephiroth3/part3.vmt");
		AddFileToDownloadsTable("materials/mapeadores/kaem/sephiroth3/part3.vtf");
		AddFileToDownloadsTable("materials/mapeadores/kaem/sephiroth3/part4.vmt");
		AddFileToDownloadsTable("materials/mapeadores/kaem/sephiroth3/part4.vtf");
		AddFileToDownloadsTable("materials/mapeadores/kaem/sephiroth3/part5.vmt");
		AddFileToDownloadsTable("materials/mapeadores/kaem/sephiroth3/part5.vtf");
		AddFileToDownloadsTable("materials/mapeadores/kaem/sephiroth3/part6.vmt");
		AddFileToDownloadsTable("materials/mapeadores/kaem/sephiroth3/part6.vtf");
		AddFileToDownloadsTable("materials/mapeadores/kaem/sephiroth3/part7.vmt");
		AddFileToDownloadsTable("materials/mapeadores/kaem/sephiroth3/part7.vtf");
		AddFileToDownloadsTable("materials/mapeadores/kaem/sephiroth3/part8.vmt");
		AddFileToDownloadsTable("materials/mapeadores/kaem/sephiroth3/part8.vtf");
		AddFileToDownloadsTable("materials/mapeadores/kaem/sephiroth3/part9.vmt");
		AddFileToDownloadsTable("materials/mapeadores/kaem/sephiroth3/part9.vtf");
		AddFileToDownloadsTable("materials/mapeadores/kaem/sephiroth3/part10.vmt");
		AddFileToDownloadsTable("materials/mapeadores/kaem/sephiroth3/part10.vtf");
		AddFileToDownloadsTable("materials/mapeadores/kaem/sephiroth3/part11.vmt");
		AddFileToDownloadsTable("materials/mapeadores/kaem/sephiroth3/part11.vtf");
		AddFileToDownloadsTable("materials/mapeadores/kaem/sephiroth3/part12.vmt");
		AddFileToDownloadsTable("materials/mapeadores/kaem/sephiroth3/part12.vtf");
		AddFileToDownloadsTable("materials/mapeadores/kaem/sephiroth3/part13.vmt");
		AddFileToDownloadsTable("materials/mapeadores/kaem/sephiroth3/part13.vtf");
		AddFileToDownloadsTable("materials/mapeadores/kaem/sephiroth3/part14.vmt");
		AddFileToDownloadsTable("materials/mapeadores/kaem/sephiroth3/part14.vtf");
		AddFileToDownloadsTable("materials/mapeadores/kaem/sephiroth3/part15.vmt");
		AddFileToDownloadsTable("materials/mapeadores/kaem/sephiroth3/part15.vtf");
		AddFileToDownloadsTable("materials/mapeadores/kaem/sephiroth3/part16.vmt");
		AddFileToDownloadsTable("materials/mapeadores/kaem/sephiroth3/part16.vtf");
		AddFileToDownloadsTable("materials/mapeadores/kaem/sephiroth3/part17.vmt");
		AddFileToDownloadsTable("materials/mapeadores/kaem/sephiroth3/part17.vtf");
		AddFileToDownloadsTable("materials/mapeadores/kaem/sephiroth3/part18.vmt");
		AddFileToDownloadsTable("materials/mapeadores/kaem/sephiroth3/part18.vtf");
		AddFileToDownloadsTable("materials/mapeadores/kaem/sephiroth3/part19.vmt");
		AddFileToDownloadsTable("materials/mapeadores/kaem/sephiroth3/part19.vtf");
		AddFileToDownloadsTable("materials/mapeadores/kaem/sephiroth3/part20.vmt");
		AddFileToDownloadsTable("materials/mapeadores/kaem/sephiroth3/part20.vtf");

		PrecacheSound("#zombieden/custommusic/advent2.mp3", true);
		PrecacheSound("#zombieden/custommusic/m2fix.mp3", true);
		PrecacheSound("#zombieden/custommusic/m3fix.mp3", true);
		PrecacheSound("#zombieden/custommusic/m4fix.mp3", true);
		PrecacheSound("#zombieden/custommusic/m5fix.mp3", true);
		PrecacheSound("#zombieden/custommusic/m6.mp3", true);

		AddFileToDownloadsTable("sound/zombieden/custommusic/advent2.mp3");
		AddFileToDownloadsTable("sound/zombieden/custommusic/m2fix.mp3");
		AddFileToDownloadsTable("sound/zombieden/custommusic/m3fix.mp3");
		AddFileToDownloadsTable("sound/zombieden/custommusic/m4fix.mp3");
		AddFileToDownloadsTable("sound/zombieden/custommusic/m5fix.mp3");
		AddFileToDownloadsTable("sound/zombieden/custommusic/m6.mp3");
	}
	else
	{
		char sFilename[256];
		GetPluginFilename(INVALID_HANDLE, sFilename, sizeof(sFilename));

		ServerCommand("sm plugins unload %s", sFilename);
	}
}

/*public void OnEntityCreated(int entity, const char[] sClassname)
{
	if (IsValidEntity(entity))
	{
		SDKHook(entity, SDKHook_SpawnPost, OnEntitySpawned);
	}
}*/

public void OnEntitySpawned(int entity, const char[] sClassname)
{
	char sTargetname[128];
	GetEntPropString(entity, Prop_Data, "m_iName", sTargetname, sizeof(sTargetname));

	if (!strncmp(sTargetname, "EX3SephirothWeapon", 18, false))
	{
		char sVariant[512];
		Format(sVariant, sizeof(sVariant), "OnPlayerPickup !activator:AddOutput:modelindex %d:0:1", g_iModelIndex);

		SetVariantString(sVariant);
		AcceptEntityInput(entity, "AddOutput");
	}
	else if (!strncmp(sTargetname, "EX3EndingRelay", 14, false))
	{
		SetVariantString("OnUser1 cancion_2:Kill::0:1");
		AcceptEntityInput(entity, "AddOutput");

		SetVariantString("OnUser1 cancion_1:AddOutput:message #zombieden/custommusic/m5fix.mp3:0:1");
		AcceptEntityInput(entity, "AddOutput");

		SetVariantString("OnUser1 cancion_1:PlaySound::0.02:1");
		AcceptEntityInput(entity, "AddOutput");
	}
	else if (!strncmp(sTargetname, "LevelRelayExtreme3Zombieden", 27, false))
	{
		SetVariantString("OnTrigger cancion_1:AddOutput:message #zombieden/custommusic/advent2.mp3:1:1");
		AcceptEntityInput(entity, "AddOutput");

		SetVariantString("OnTrigger cancion_2:AddOutput:message #zombieden/custommusic/m2fix.mp3:1:1");
		AcceptEntityInput(entity, "AddOutput");

		SetVariantString("OnTrigger cancion_3:AddOutput:message #zombieden/custommusic/m3fix.mp3:1:1");
		AcceptEntityInput(entity, "AddOutput");

		SetVariantString("OnTrigger cancion_3_extra:AddOutput:message #zombieden/custommusic/m4fix.mp3:1:1");
		AcceptEntityInput(entity, "AddOutput");
	}
	else if (!strncmp(sTargetname, "LevelRelayRaceZombieden", 23, false))
	{
		SetVariantString("OnTrigger mus_zm2:Kill::0:1");
		AcceptEntityInput(entity, "AddOutput");

		SetVariantString("OnTrigger ss_howd:AddOutput:message #zombieden/custommusic/m6.mp3:0:1");
		AcceptEntityInput(entity, "AddOutput");

		SetVariantString("OnTrigger ss_howd:PlaySound::0.02:1");
		AcceptEntityInput(entity, "AddOutput");

		SetVariantString("OnTrigger ss_howd:PlaySound::190.02:1");
		AcceptEntityInput(entity, "AddOutput");

		SetVariantString("OnTrigger ss_howd:PlaySound::380.02:1");
		AcceptEntityInput(entity, "AddOutput");

		SetVariantString("OnTrigger ss_howd:PlaySound::570.02:1");
		AcceptEntityInput(entity, "AddOutput");

		SetVariantString("OnTrigger ss_howd:PlaySound::760.02:1");
		AcceptEntityInput(entity, "AddOutput");
	}
}

public void OnPluginStart()
{
	RegAdminCmd("sm_racebhop", Command_RaceBhop, ADMFLAG_ROOT);

	RegServerCmd("sm_cancelrace", Command_CancelRace);
	RegServerCmd("sm_startrace",  Command_StartRace);
	RegServerCmd("sm_endrace",    Command_EndRace);
}

public Action OnPlayerRunCmd(int client, int &buttons, int &impulse, float vel[3], float angles[3], int &weapon)
{
	if (!g_bRaceEnabled || !g_bRaceAutoBhop)
		return Plugin_Continue;

	if (IsPlayerAlive(client) && buttons & IN_JUMP)
		if(!(GetEntityMoveType(client) & MOVETYPE_LADDER) && !(GetEntityFlags(client) & FL_ONGROUND))
				buttons &= ~IN_JUMP;

	return Plugin_Continue;
}

public Action Command_RaceBhop(int client, int args)
{
	g_bRaceAutoBhop = !g_bRaceAutoBhop;

	if (g_bRaceAutoBhop)
	{
//		ServerCommand("sm plugins unload togsjumpstats");
//		ServerCommand("sm plugins reload adminmenu");
		ServerCommand("sv_airaccelerate 150");
	}
	else
	{
//		ServerCommand("sm plugins load togsjumpstats");
//		ServerCommand("sm plugins reload adminmenu");
		ServerCommand("sv_airaccelerate 10");
	}

	return Plugin_Handled;
}

public Action Command_CancelRace(int args)
{
	if (g_bRaceAutoBhop)
	{
//		ServerCommand("sm plugins load togsjumpstats");
//		ServerCommand("sm plugins reload adminmenu");
		ServerCommand("sv_airaccelerate 10");
	}

	g_bRaceEnabled = false;
	g_bRaceAutoBhop = false;
	g_bRaceBlockInfect = false;
	g_bRaceBlockRespawn = false;
	return Plugin_Handled;
}

public Action Command_StartRace(int args)
{
	g_bRaceEnabled = true;
	g_bRaceBlockInfect = true;
	g_bRaceBlockRespawn = true;
	return Plugin_Handled;
}

public Action Command_EndRace(int args)
{
	g_bRaceBlockInfect = false;

	char sTargetname[128];
	for (int client = 1; client <= MaxClients; client++)
	{
		if (!IsClientInGame(client) || !IsPlayerAlive(client))
			continue;

		GetEntPropString(client, Prop_Data, "m_iName", sTargetname, sizeof(sTargetname));

		if (StrEqual(sTargetname, "player_racewinner", false))
			continue;

		ZR_InfectClient(client);
	}

	int entity = INVALID_ENT_REFERENCE;
	while ((entity = FindEntityByClassname(entity, "*")) != INVALID_ENT_REFERENCE)
	{
		if (!IsValidEntity(entity))
			continue;

		GetEntPropString(entity, Prop_Data, "m_iName", sTargetname, sizeof(sTargetname));

		if (!StrEqual(sTargetname, "RaceRelayEnd", false))
			continue;

		AcceptEntityInput(entity, "CancelPending");
	}

	return Plugin_Handled;
}

public Action ZR_OnClientInfect()
{
	if (g_bRaceEnabled && g_bRaceBlockInfect)
		return Plugin_Handled;

	return Plugin_Continue;
}

public Action ZR_OnClientRespawn()
{
	if (g_bRaceEnabled && g_bRaceBlockRespawn)
		return Plugin_Handled;

	return Plugin_Continue;
}