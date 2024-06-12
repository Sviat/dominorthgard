/// Copyleft (C) Northgard Community
/// Send your requests, questions and issues
///     here: https://github.com/Sviat/dominorthgard/issues
///     or in Discord "Northgard Official"

// --- Named constants, settings and flags ---
var CONSTS = {
    DEBUG: false
}

// --- State to set onFirstLaunch, keep (serialize) with Save and restore (deserialize) with Load ---
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
    setObjectives(); // if you want to use Objectives API do it here, on first launch only
}

function onEachLaunch() {
}

// Regular update is called every 0.5s
function regularUpdate(dt : Float) {
}
// // --- END of BOILERPLATE ---

function setVictory() {
    // (Un)comment Victory kinds you need,
    // but be sure to have at least one Victory (i.e. commented or remove that particular type)
    state.removeVictory(Victory.Fame);
    state.removeVictory(Victory.Money);         // Commercial Influence
    state.removeVictory(Victory.Lore);
    state.removeVictory(Victory.Yggdrasil);     // Colonization
    state.removeVictory(Victory.OdinSword);
    state.removeVictory(Victory.Helheim);
    state.removeVictory(Victory.MealSquirrel);  // Squirrel's banquet
    //state.removeVictory(Victory.Military);    // Domination
}

function setObjectives() {
    // Setup Objectives (progress bars with button) to show players in top right corner
}