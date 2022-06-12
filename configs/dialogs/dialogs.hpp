class BLU_showIntro_Dialog
{
	idd = 8000;
	movingEnabled = false;
	onLoad = "(_this select 0) displayAddEventhandler ['KeyDown', {(_this select 1) isEqualTo 1}];";
	class controls
	{
		class pictureBackground: RscPicture
		{
			idc = 1200;
			text = "#(argb,8,8,3)color(0.5,1,0.5,0.5)";
			x = 0.304062 * safezoneW + safezoneX;
			y = 0.379 * safezoneH + safezoneY;
			w = 0.391875 * safezoneW;
			h = 0.242 * safezoneH;
		};
		class comboboxList: RscCombo
		{
			idc = 2100;
			x = 0.329844 * safezoneW + safezoneX;
			y = 0.434 * safezoneH + safezoneY;
			w = 0.355781 * safezoneW;
			h = 0.044 * safezoneH;
		};
		class buttonConfirm: RscButton
		{
			idc = 1600;
			text = "Confirm"; //--- ToDo: Localize;
			x = 0.5825 * safezoneW + safezoneX;
			y = 0.533 * safezoneH + safezoneY;
			w = 0.0979687 * safezoneW;
			h = 0.044 * safezoneH;
			action = "call BLU_fnc_factionSelected";
		};
	};
};