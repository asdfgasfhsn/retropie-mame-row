# ES Custom Collections for MAME Random Of The Week Roms
Create EmulationStation custom collections for RetroPie [MAME Random Of the Week](https://retropie.org.uk/forum/category/16/mame-random-of-the-week).

The script creates the following collections;
- mame-row-crnt (Current ROW)
- mame-row-hist (All historic ROWs)

## Usage
Clone the repo to your RetroPie installation;

    `git clone https://github.com/asdfgasfhsn/retropie-mame-row`

See the script documentation for actual usage;

    ./mame-row-custom-collection.sh -h

    RetroPie MAME ROW Custom Collection Maker

    Creates EmulationStation Custom Collections for MAME Rom of the Week.
    * note: Requires internet access to download romlist

    Usage: ./mame-row-custom-collection.sh [-s] '<arcade mame-libretro>' [-c] '<current historic>'

    Examples:
    * Create/update collection for historic ROWs using mame-libretro roms
    ./mame-row-custom-collection.sh -s 'mame-libretro' -c 'historic'

    * Create/update collections for historic and current ROWs using arcade roms
    ./mame-row-custom-collection.sh -s 'arcade'

## Artwork
SVG files are located in `artwork` for each collection. The file names match
the collection name.

## TODO
- add error output in no internet connection is found
- find a nice way to get script to run at bootup before ES starts
