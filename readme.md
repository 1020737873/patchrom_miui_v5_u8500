#open patchrom miui source

$ mkdir miuiv5 && cd miuiv5

$ repo init -u git://github.com/Micode/patchrom.git -b jellybean

$ git clone https://github.com/XMelancholy/patchrom_miui_v5_u8500 -b jellybean

$ source build/envsetup.sh && cd u8500

$ make zipfile && ./fix.sh
