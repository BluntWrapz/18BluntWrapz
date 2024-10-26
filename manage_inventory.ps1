# PowerShell script to manage inventory
$inventory = @{}

function Add-Item {
    param (
        [string]$itemName,
        [int]$quantity
    )
    if ($inventory.ContainsKey($itemName)) {
        $inventory[$itemName] += $quantity
    } else {
        $inventory[$itemName] = $quantity
    }
}
