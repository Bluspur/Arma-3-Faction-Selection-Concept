disableSerialization;

_factions = "true" configClasses (missionConfigFile >> "factions");
_selectedFaction = "";
_ctrl = (findDisplay 8000) displayCtrl 2100;

_selectedFaction = _factions select (lbCurSel _ctrl);
missionNamespace setVariable ["SelectedFaction",_selectedFaction];

closeDialog 0;


