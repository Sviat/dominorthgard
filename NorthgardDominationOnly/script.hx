/// Copyleft (C) Northgard Community
/// Send your requests, questions and issues
///		here: https://github.com/Sviat/dominorthgard/issues
///		or in Discord "Northgard Official"

// --- Named constants, settings and flags ---
var CONSTS = {
    DEBUG: false
}

// --- State to set onFirstLaunch, keep and serialize with Save  ---
DATA = {
}

// // --- BEGIN of BOILERPLATE ---
function saveState() {
    state.scriptProps = {
        DATA: DATA
    }
}

function init() {
    if(!isHost()) return;
    setPause(true);

    if (state.time == 0)
    {
        onFirstLaunch();
    }
    onEachLaunch();

    setPause(false);
}

function onFirstLaunch() {
    setVictory();
    setObjectives(); 	// if you want to use Objectives API do it here, on first launch only
}

function onEachLaunch() {
}

// Regular update is called every 0.5s
function regularUpdate(dt : Float) {
}
// // --- END of BOILERPLATE ---

function setVictory() {
    // Comment Victory kinds you need,
    // but be sure to have at least one Victory (i.e. commented or remove that particular type)
    state.removeVictory(VictoryKind.VFame);
    state.removeVictory(VictoryKind.VMoney);
    state.removeVictory(VictoryKind.VLore);
    state.removeVictory(VictoryKind.VYggdrasil);
    state.removeVictory(VictoryKind.VOdinSword);
    state.removeVictory(VictoryKind.VHelheim);
    state.removeVictory(VictoryKind.VMealSquirrel);
    //state.removeVictory(VictoryKind.VMilitary);
}

function setObjectives() {
	// Setup Objectives (progress bars with button) to show players in top right corner
}