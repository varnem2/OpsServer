
if !(isServer) exitWith {};

_spawnPoints = ["opfor4","opfor3","opfor2","opfor1","opfor5","opfor6","opfor7"];
_unitsInGroup = ["rhs_vdv_flora_at","rhs_vdv_flora_aa","rhs_vdv_flora_machinegunner","rhs_vdv_flora_rifleman","rhs_vdv_flora_rifleman"];

_spawnMarker = _spawnPoints select (floor random (count _spawnPoints));

_unitsSpawnPosition = getMarkerPos _spawnMarker; //[x,y,z]

_newGroup = createGroup [east,true];
_newLeader = "rhs_vdv_flora_junior_sergeant" createUnit [
        _unitsSpawnPosition, 
        _newGroup, 
        'newLeader = this; 
        0 = [
                this, 
                "DELAY=", [5,10], 
                "RESPAWNMARKERS=", ["opfor4","opfor3","opfor2","opfor1"],
                "PAUSE=", 2
            ] spawn jebus_fnc_main;'
        ];
sleep .2;

{
    _newUnit = _x createUnit [_unitsSpawnPosition, _newGroup, "newUnit = this"];
    sleep .6;
}forEach _unitsInGroup;

[_newGroup, getPos areaOfOperation, 150] call BIS_fnc_taskAttack;
sleep 4;