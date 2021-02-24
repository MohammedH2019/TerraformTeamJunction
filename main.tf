provider "azurerm" {
    version = "~> 2.46.0"   
    features {} 
}
resource "azurerm_resource_group" "scottish-summit" {
   name = "scottishsummit2021"
   location = "east us"
}

resource "azurerm_storage_account" "TeamJunctionStorage"{
    name = "teamjunctionstorage2021"
    location = azurerm_resource_group.scottish-summit.location
    resource_group_name = azurerm_resource_group.scottish-summit.name
    account_tier = "standard"
    account_replication_type = "GRS"
}
