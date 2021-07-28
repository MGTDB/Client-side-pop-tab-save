#define _ARMA_
class CfgPatches
{
	class tab
	{
		units[] = {};
		weapons[] = {};
		Martyr_Version = 0.1;
		requiredVersion = 1.90;
		requiredAddons[] = {};
		author[]= {"MGTDB"}; 
	};
};
class CfgFunctions
{
	class tab
	{
		class main
		{
			file = "TabSave";
			class TabSaveinit
			{
				postInit = 1;
			};
		};
	};
};