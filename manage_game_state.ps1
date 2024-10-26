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
