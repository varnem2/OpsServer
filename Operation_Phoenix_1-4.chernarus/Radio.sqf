[
/* 0 object */				radioObj,
/* 1 action title */			"Plant Bug",
/* 2 idle icon */			"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
/* 3 progress icon */			"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",
/* 4 condition to show */		"player distance radioObj < 2",
/* 5 condition for action */		"player distance radioObj < 2",
/* 6 code executed on start */		{execVM "myHint.sqf"},
/* 7 code executed per tick */		[],
/* 8 code executed on completion */	{hint "You finished planting the bug without loosing any fingers"},
/* 9 code executed on interruption */	{hint "You drop your tools on the floor like an idiot"},
/* 10 arguments */			[],
/* 11 action duration */		15,
/* 12 priority */			0,
/* 13 remove on completion */		true,
/* 14 show unconscious */		false
] remoteExec ["BIS_fnc_holdActionAdd", [0, -2] select isDedicated, true];