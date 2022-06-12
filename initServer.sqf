missionNamespace setVariable ["SelectedFaction",""];

if (hasInterface) then {
	[] spawn BLU_fnc_showDialog;
} 
else
{
	[] spawn BLU_fnc_sendDialog;
};
