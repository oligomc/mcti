# Minecraft Text Input (MCTI)
***
## Description
MCTI is a data pack for Minecraft that provides functions for collecting text inputs from players of any permission level.

Text input can be collected from multiple selected targets in a single command and is functional in both singleplayer and multiplayer worlds.

## Installation
The data pack can be installed in a singleplayer or multiplayer world using [this guide](https://minecraft.fandom.com/wiki/Tutorials/Installing_a_data_pack). 

Once installed and the world is loaded, type `/reload` to load all data pack assets.

The data pack can be disabled in-game before uninstalling using the `/function ti:disable` command.

## Usage
### Getting Text Input from Players
Any `target` can begin entering text by enabling them on the `textinput` scoreboard using the command `/scoreboard players enable [target] textinput` followed by triggering the scoreboard using the command `/trigger textinput`. Alternatively, this can be done from an external executor using the command `/execute as [target] run trigger textinput`. 

The mainhand slot of `target` will be changed to a `writable_book` with customizable text and will display a customizable message on the actionbar. The initial book text can be changed to any `text` by editing the `in.book` tag in the `ti:io` namespace using the command `/data modify storage ti:io in.book set value [text]`, where `[text]` is an array of strings (`[""]` by default). The message on the actionbar can be changed to any `message` by editing the `in.message` tag in the `ti:io` namespace using the command `/data modify storage ti:io in.message set value [message]`, where `[message]` is a string (`"Open the book and enter your response!"` by default). 

Once `target` has changed the book text and pressed the `"Done"` button in the GUI, the book will be replaced with the item that previously occupied the slot and the function `ti:out` will be run at their location. When editing the `ti:out` file, the `target` that entered the text can be referenced using the `@p` selector (NOT `@s`) and their text can be accessed from either the `out.plain` tag for the player's input as plain strings or the `out.json` tag for the player's input as a list of json text components in the `ti:io` storage namespace. By default, `ti:out` runs a single command which prints the `target`'s plain text input back to them: `/tellraw @p {"nbt":"out.plain","storage":"ti:io"}`.

**NOTE**: The `writable_book` is replaced _before_ `ti:out` is called, meaning the `target`'s previously held item data is available in the player's `SelectedItem` data tag when `ti:out` is called.

### Assets and Reserved Namespaces
After installing and loading the data pack, the following assets are created:
1. The `textinput` scoreboard objective is created
2. Data is initialized to the `ti:io` and `ti:data` storage namespaces
3. Chunk `[0, 0]` is forceloaded
4. A marker `armor_stand` with the name `ti` and the tag `ti.item` is summoned at `[0, -70, 0]`
5. An empty `black_shulker_box` is placed at `[0, -64, 0]`

It is recommended that creators refrain from using these namespaces and avoid interacting with loaded assets in unintended ways to prevent unexpected behavior.

## Credits
Inspiration for this data pack came from server plugins like [WesJD's AnvilGUI](https://github.com/WesJD/AnvilGUI).

## License
GNU GPL v3.0 (see LICENSE.txt)