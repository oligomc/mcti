# Minecraft Text Input (MCTI)
***
## Description
MCTI is a data pack for Minecraft that provides functions for collecting text inputs from players of any permission level.

Text input can be collected from multiple selected targets in a single command and is functional in both singleplayer and multiplayer worlds.

## Installation
The data pack can be installed in a singleplayer or multiplayer world using [this guide](https://minecraft.fandom.com/wiki/Tutorials/Installing_a_data_pack). 

Once installed and the world is loaded, type `/reload` to load all data pack assets.

The data pack can be disabled in-game before uninstalling using `/function ti:disable`.

## Usage
### Getting Text Input from Players
Any `target` can begin entering text by enabling them on the `textinput` scoreboard using `/scoreboard players enable [target] textinput` followed by triggering the scoreboard using `/trigger textinput`. Alternatively, this can be done from an external executor using `/execute as [target] run trigger textinput`. 

The mainhand slot of `target` will be changed to a `writable_book` with customizable page text and will display a customizable actionbar message. Once `target` has changed the book text and pressed the `"Done"` button, the book will be replaced with the item previously occupying that slot and the `marker` entity `ti.marker` will mark `target`'s location. Finally, the command in `in.command` will be run on the next game tick (see `in.command` section).

### `ti:io` storage
Text input can be accessed and customized through the `ti:io` storage namespace. When the command `data get storage ti:io` is entered a data compound is returned with the following data:
- `in.book`: The text that initially fills the pages of the book given to `target`. Takes an array of strings. Default is `[""]`.
- `in.message`: The message that displays on the actionbar when the book is given to `target`. Takes a string. Default is `"Open the book and enter your response!"`.
- `in.display`: Whether to display `in.message` to `target`. Takes a boolean. Default is `true`.
- `in.command`: Command to run the tick after `target` has successfully entered text. Execution occurs from a command block located at `1 -64 0`, however, this location can be set to `target`'s position using `execute` at the `marker` entity `ti.marker` (UUID: `8f966154-c782-4f40-a44f-ad7632b9c700`, Name: `ti.marker`, Tag: `ti.marker`). `Marker` identifiers can be displayed and grabbed in-game using the function `ti:marker`. By default, the plain text input is printed to `target`: `'execute at 8f966154-c782-4f40-a44f-ad7632b9c700 run tellraw @p {"nbt":"out.plain","storage":"ti:io"}'`.
- `out.plain`: The text entered by `target` as an array of plain text strings. Each element corresponds to a single page from the response book.
- `out.json`: The text entered by `target` as an array of json text components. Each element corresponds to a single page from the response book.

### Assets and Reserved Namespaces
After installing and loading the data pack, the following assets are created:
1. The `textinput` scoreboard objective is created
2. Data is initialized to the `ti:io` and `ti:data` storage namespaces
3. Chunk `[29999983, 0]` is forceloaded
4. An `armor_stand` (UUID: `4e12eb6d-70c7-4647-a0da-cefbaf3e2d16`, Name: `ti`) and a `marker` (UUID: `8f966154-c782-4f40-a44f-ad7632b9c700`, Name: `ti.marker`, Tag: `ti.marker`) are summoned at `[29999982, -70, 0]`
5. An empty `black_shulker_box` is placed at `[29999982, -63, 1]` and a `command_block` is placed at `[29999982, -63, 2]`

It is recommended that creators refrain from using these namespaces and avoid interacting with loaded assets in unintended ways to prevent unexpected behavior.

## Credits
Inspiration for this data pack came from server plugins like [WesJD's AnvilGUI](https://github.com/WesJD/AnvilGUI). Data pack assets written by IGN Oligo.

## License
GNU GPL v3.0 (see LICENSE.txt)