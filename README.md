# Custom Polybar Scripts

## Player

The ```player.sh``` can print song name and artist to your polybar.

### Installation:
Add `player.sh` to polybar config folder.
### Usage:
Add this lines to your polybar `config.ini` file.<br>
PS: If your CPU is underpowered, keep the interval as high as possible. The higher you set the interval, the more lag it will cause, but it will keep your CPU cool. I recommend 1-10
```ini
[module/player]
type = custom/script
exec = path/of/your/player.sh
interval = 0
```