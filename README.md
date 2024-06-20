# f4st-repairwepon

f4st-repairwepon is a FiveM script designed to facilitate efficient weapon repair operations in-game. It seamlessly integrates with player inventories and ensures a smooth repair process for weapons.

## Installation

1. **Clone the Repository:**
   - Clone the repository from GitHub:
     ```bash
     git clone https://github.com/f4st3rxd/f4st-repairwepon.git
     ```

2. **Dependencies:**
   - Make sure you have the necessary dependencies installed:
     - [qb-core](https://github.com/qbcore-framework/qb-core): Essential framework for FiveM servers.
     - [ox_inventory](https://github.com/overextended/ox_inventory): Inventory system for managing player items.
     - [qb-menu](https://github.com/qbcore-framework/qb-menu): Menu framework for interactive UI.



3. **Configuration:**
   - Adjust configuration settings in `config.lua` according to your server setup.
   - Ensure `RepairCoords` are set correctly in `client.lua` for where players can repair weapons.
   - Set `WeaponRepairPermission` to the job name that can access the repair functionality.
   - Define `WeaponRepairPrice` for the cost of repairing a weapon.

4. **Integration:**
   - Place the `f4st-repairwepon` directory into your FiveM server's `resources` folder.
   - Add `start f4st-repairwepon` to your `server.cfg` file.

## Usage

- Approach the designated repair area in-game (defined by `RepairCoords`).
- If you have the necessary job permissions (`WeaponRepairPermission`), press 'E' to open the repair menu.
- Select "Repair the Weapon" from the menu to initiate the repair process.
- The specified repair cost (`WeaponRepairPrice`) will be deducted from the player's account upon repair.

## Contributing

Contributions are welcome! If you have any suggestions, improvements, or issues, please [create an issue](https://github.com/f4st3rxd/f4st-repairwepon/issues) or submit a pull request.
