
resource "azurerm_virtual_machine" "web_vm" {
  name                  = "web-vm"
  resource_group_name   = var.resource_group_name
  location              = each.value.location
  network_interface_ids = [azurerm_network_interface.web_nic.id]
  vm_size               = "Standard_DS1_v2"
  storage_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2019-Datacenter"
    version   = "latest"
  }
  storage_os_disk {
    name              = "myosdisk1"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = "hostname"
    admin_username = "adminUser"
    admin_password = "adminPassword123!"
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
  tags = {
    environment = "staging"
  }
}
