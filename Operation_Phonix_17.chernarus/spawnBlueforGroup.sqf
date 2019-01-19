
if !(isServer) exitWith {};

_spawnPoints = ["bluefor1","bluefor2"];
_unitsInGroup = ["B_HeavyGunner_F","B_soldier_M_F","B_soldier_AAR_F","B_Sharpshooter_F","B_medic_F"];

_spawnMarker = _spawnPoints select (floor random (count _spawnPoints));

_unitsSpawnPosition = getMarkerPos _spawnMarker; //[x,y,z]

_newGroup = createGroup [west,true];
_newLeader = "B_Soldier_SL_F" createUnit [
        _unitsSpawnPosition, 
        newGroup, 
        'newLeader = this; 
        0 = [
                this, 
                "DELAY=", [30,60], 
                "RESPAWNMARKERS=", ["bluefor1","bluefor2"],
                "PAUSE=", 2
            ] spawn jebus_fnc_main;'
        ];
sleep .2;

{
    _newUnit = _x createUnit [_unitsSpawnPosition, _newGroup, "newUnit = this"];
    sleep .6;
}forEach _unitsInGroup;

[_newGroup, getPos areaOfOperation, 150] call BIS_fnc_taskAttack; //this has to change
sleep 4;