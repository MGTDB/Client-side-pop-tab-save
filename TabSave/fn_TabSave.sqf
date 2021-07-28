if(isServer) then
{
    "TAB" addPublicVariableEventHandler {_this select 1 call TabSave};
    TabSave =
    {
        private ["_player","_uid","_tabs"];
		_player = _this select 0;
		_tabs = _this select 1;
		_uid = getplayerUID _player;
		_player setVariable ["ExileMoney", _tabs, true];
		format["setPlayerMoney:%1:%2", _tabs, _player getVariable ["ExileDatabaseID", 0]] call ExileServer_system_database_query_fireAndForget;
    };
};