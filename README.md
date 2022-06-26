# Minecraft Text Input (MCTI)
## Description
Collect text input from players using writable books. Multiple players can be targeted with a single command and is multiplayer compatible.

## Installation
Once extracted in data packs folder, type `/reload` in-game to load assets.

The data pack can be uninstalled by first running `/function ti:uninstall` in-game, whereafter files can be removed from data packs folder.

## Usage
Rewarding `target`(s) with the advancement `ti:enable` using the command `/advancement grant [target] only ti:enable` will give them an immovable `writable_book` for entering text and will display a custom message. 

Once `target` has entered text in book, the `ti:enable` advancement will be removed, the book will be replaced with their previously-held item, and a custom command can be run on the next available tick. Text input from `target` can be accessed from the `out` tag in the `ti:io` storage namespace.

## Customizability
Many customizability features are offered by changing data tag values in the `ti:io` storage namespace:
- `in.book`: The text that initially fills the pages of the book given to `target`. Takes an array of strings. Default is `[""]`.
- `in.message`: The message that displays on the actionbar when the book is given to `target`. Takes a string. Default is `"Open the book and enter your response!"`.
- `in.display`: Whether to display `in.message` to `target` when text input is enabled. Takes a boolean. Default is `true`.
- `in.command`: Command to run after `target` has finished entering text. `target` can be selected as player with `ti.command` score of `-1`. One command is run per tick in the order that `targets` enter text. Takes a string. Default value is `"execute as @a[scores={ti.command=-1}] run tellraw @s {"nbt":"out", "storage":"ti:io"}"` 
- `out`: The text entered by `target` as an array of strings.

## Credits
Data pack assets written by oligomc (ign Oligo)

## License
MIT. See LICENSE.txt
