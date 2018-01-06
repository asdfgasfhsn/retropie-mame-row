# ES Custom Collections for MAME Random Of The Week Roms
Create EmulationStation custom collections for RetroPie [MAME Random Of the Week](https://retropie.org.uk/forum/category/16/mame-random-of-the-week).

The script creates the following collections;
- mame-row-crnt (Current ROW)
- mame-row-hist (All historic ROWs)

## Usage
Download the latest version of the script to your RetroPie installation and make it executable;

    curl -GO# https://raw.githubusercontent.com/asdfgasfhsn/retropie-mame-row/master/mame-row-custom-collection.sh \
    && chmod +x mame-row-custom-collection.sh

Or you can clone the repo;

    git clone https://github.com/asdfgasfhsn/retropie-mame-row


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
SVG files are located in the `artwork` folder for each collection;
- [mame-row-crnt](artwork/mame-row-crnt.svg)
- [mame-row-hist](artwork/mame-row-hist.svg)

## TODO
- add error output when no internet connection is found
- find a nice way to get script to run at bootup before ES starts
