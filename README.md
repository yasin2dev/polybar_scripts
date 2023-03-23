# Custom Polybar Scripts

## Player

The ```player.sh``` can print song name and artist to your polybar.

### Installation:
Add `player.sh` to polybar config folder.
### Usage:
Add this lines to your polybar `config.ini` file.
```ini
[module/player]
type = custom/script
exec = path/of/your/player.sh
interval = 25
```