# Function to reset game state
function Reset-GameState {
    $global:currentState = "Starting"
    Set-Content -Path $currentStateFile -Value $global:currentState  # Save to file
    Write-Output "Game state reset to: $global:currentState"
}

nano manage_game_state.ps1
# Function to reset game state
function Reset-GameState {
    $global:currentState = "Starting"
    Set-Content -Path $currentStateFile -Value $global:currentState  # Save to file
    Write-Output "Game state reset to: $global:currentState"
}

nano core_aspects.sh
echo "## Sound Design" >> core_aspects.md
echo "- Background Music: Define the type of music for different game scenarios." >> core_aspects.md
echo "- Sound Effects: List all required sound effects and their sources." >> core_aspects.md
git add .
git commit -m "Refine scripts for game state management and core aspects documentation"
git push

# Define game states
$gameStates = @("Starting", "In Progress", "Paused", "Game Over")

# Function to display the current game state
function Show-GameState {
    param (
        [string]$currentState
    )
    Write-Output "Current Game State: $currentState"
}

# Function to change the game state
function Change-GameState {
    param (
        [string]$newState
    )
    if ($gameStates -contains $newState) {
        Show-GameState -currentState $newState
    } else {
        Write-Output "Invalid state. Please choose from: $($gameStates -join ', ')"
    }
}

# Example usage
Change-GameState -newState 'Starting'  # Change this to test different states
