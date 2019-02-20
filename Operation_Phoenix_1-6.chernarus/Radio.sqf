[
/* 0 object */				deviceObj,
/* 1 action title */			"Attempt to remove warhead (hold action for 5 minutes straight)",
/* 2 idle icon */			"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
/* 3 progress icon */			"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
/* 4 condition to show */		"player distance deviceObj < 2",
/* 5 condition for action */		"player distance deviceObj < 2",
/* 6 code executed on start */		{execVM "myHint.sqf"},
/* 7 code executed per tick */		[],
/* 8 code executed on completion */	{execVM "hide.sqf"; hint "You finished removing the core, your fingers are starting to feel numb already"},
/* 9 code executed on interruption */	{hint "You drop your tools on the floor like an idiot"},
/* 10 arguments */			[],
/* 11 action duration */		5,
/* 12 priority */			0,
/* 13 remove on completion */		true,
/* 14 show unconscious */		false
] remoteExec ["BIS_fnc_holdActionAdd", [0, -2] select isDedicated, true];