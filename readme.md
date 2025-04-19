# 🛠️ Network Admin Toolkit

A collection of **Batch scripts** designed for network administration tasks. These scripts help manage and configure network adapters, view adapter details, enable DHCP, and set static IP addresses.

---

## 📂 Included Scripts

### 1. **Show Wi-Fi Adapter Details**
Displays all IP address information for the Wi-Fi adapter.

- **File**: [Show Wifi Adapter Details.bat](Show%20Wifi%20Adapter%20Details.bat)
- **Usage**:
  ```bat
  netsh interface ip show config name="WiFi"
  ```

---

### 2. **Show Ethernet Adapter Details**
Displays all IP address information for the Ethernet adapter.

- **File**: [Show Ethernet Adapter Details.bat](Show%20Ethernet%20Adapter%20Details.bat)
- **Usage**:
  ```bat
  netsh interface ip show config name="Ethernet"
  ```

---

### 3. **Set New IP Address for Wi-Fi**
Prompts the user to input a new static IP address, subnet mask, and gateway for the Wi-Fi adapter. Requires administrative privileges.

- **File**: [Set New IP Address for Wifi.bat](Set%20New%20IP%20Address%20for%20Wifi.bat)
- **Usage**:
  ```bat
  netsh interface ip set address name="WiFi" static <IP> <Subnet Mask> <Gateway>
  ```

---

### 4. **Enable DHCP for Wi-Fi Adapter**
Restores DHCP settings for the Wi-Fi adapter, allowing it to automatically obtain an IP address and DNS server.

- **File**: [Enabling DHCP for Wifi Adapter.bat](Enabling%20DHCP%20for%20Wifi%20Adapter.bat)
- **Usage**:
  ```bat
  netsh interface ip set address name="WiFi" source=dhcp
  netsh interface ip set dns name="WiFi" source=dhcp
  ```

---

## ⚙️ How to Use

1. Download or clone this repository.
2. Navigate to the **Network Admin Toolkit** folder.
3. Run the desired `.bat` file by double-clicking it or executing it in a command prompt.

---

## 🛡️ Disclaimer

- These scripts require administrative privileges for certain operations.
- Use them at your own risk. Always ensure you have proper backups before making changes to your network configuration.