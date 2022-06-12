//Should only be running on the server
if (!isServer) exitWith {};
//Picking who gets the setup screen
_setupDialogSent = false;
_playerSlots = [playerSlot1,playerSlot2,playerSlot3];
while {!_setupDialogSent} do {
	{
		if (!_setupDialogSent && isPlayer _x) then {
			[] remoteExec ["BLU_fnc_showDialog",_x];
			systemChat format ["Sending dialog to %1",_x];
			_setupDialogSent = true;
		} else {
			systemChat format ["Check for %1 failed",_x];
		};
	} forEach _playerSlots;
};
systemChat "Message Dispatched";