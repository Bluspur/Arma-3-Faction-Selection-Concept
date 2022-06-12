if (player != player) then {waitUntil {player == player}};
waitUntil {time > 5};

disableSerialization;

systemChat "Message Received";
_factions = "true" configClasses (missionConfigFile >> "factions");

_dialog = createDialog "BLU_showIntro_Dialog";
if (!_dialog) then {hint "Dialog couldn't be opened!"};
waitUntil {!isNull (findDisplay 8000);};

_ctrl = (findDisplay 8000) displayCtrl 2100;

{
	_displayName = getText (_x >> "displayName");
	_ctrl lbAdd _displayName;
} forEach _factions;

//Selects the first option by default
_ctrl lbSetCurSel 0;