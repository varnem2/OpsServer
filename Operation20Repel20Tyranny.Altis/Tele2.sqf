 _tele = _this select 0;
_caller = _this select 1;

_caller setPos (getpos (pad_Outpost));
this addaction ["Outpost","Tele2.sqf"];

player setPosASL [
 getPos player select 0,
 getPos player select 1,
 10
];