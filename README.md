## 🚀 Inicio rápido / Quick Start

### 🇪🇸 Español
1. Clona este repo: `git clone https://github.com/ladulceriadelgordo/sm64-port.git`
2. Copia tu ROM de Super Mario 64 (USA) en la carpeta como `baserom.us.z64`.
3. Abre la terminal MINGW64 de MSYS2 en esa carpeta y ejecuta: `bash build.sh`
4. El juego queda en `build/us_pc/sm64.us.exe`. ¡No olvides limitarlo a 30 FPS! (ver abajo)

### 🇬🇧 English
1. Clone this repo: `git clone https://github.com/ladulceriadelgordo/sm64-port.git`
2. Copy your Super Mario 64 (USA) ROM into the folder as `baserom.us.z64`.
3. Open the MSYS2 MINGW64 terminal in that folder and run: `bash build.sh`
4. The game will be at `build/us_pc/sm64.us.exe`. Don't forget to limit it to 30 FPS! (see below)

## ⚠️ Play at 30 FPS / Juega a 30 FPS

### 🇪🇸 Español
IMPORTANTE: limita el juego a 30 FPS. El juego original corre a 30 FPS; si corre más rápido (por ejemplo a 60 FPS), el juego va demasiado rápido y el audio suena mal, con ruido. Para limitarlo: Panel de control de NVIDIA → Controlar la configuración 3D → Configuración de programa → agrega sm64.us.exe → Fotogramas máximos por segundo → 30 → Aplicar. También puedes usar RTSS para limitar los FPS a 30.

### 🇬🇧 English
IMPORTANT: limit the game to 30 FPS. The original game runs at 30 FPS; if it runs faster (for example at 60 FPS), the game runs too fast and the audio sounds bad, with noise/crackling. To limit it: NVIDIA Control Panel → Manage 3D Settings → Program Settings → add sm64.us.exe → Max Frame Rate → 30 → Apply. You can also use RTSS to limit the FPS to 30.

### 🇧🇷 Português
IMPORTANTE: limite o jogo a 30 FPS. O jogo original roda a 30 FPS; se rodar mais rápido (por exemplo, a 60 FPS), o jogo fica rápido demais e o áudio fica ruim, com ruído. Para limitar: Painel de Controle da NVIDIA → Gerenciar configurações 3D → Configurações do programa → adicione sm64.us.exe → Taxa máxima de quadros → 30 → Aplicar. Você também pode usar o RTSS para limitar o FPS a 30.

### 🇫🇷 Français
IMPORTANT : limitez le jeu à 30 IPS. Le jeu original tourne à 30 IPS ; s'il tourne plus vite (par exemple à 60 IPS), le jeu va trop vite et le son est mauvais, avec du grésillement. Pour limiter : Panneau de configuration NVIDIA → Gérer les paramètres 3D → Paramètres de programme → ajoutez sm64.us.exe → Fréquence d'images max → 30 → Appliquer. Vous pouvez aussi utiliser RTSS pour limiter les IPS à 30.

## 🎮 Sin NVIDIA / Without an NVIDIA GPU

### 🇪🇸 Español
Si no tienes tarjeta NVIDIA, usa RTSS (RivaTuner Statistics Server, gratis, funciona con AMD, Intel y NVIDIA): abre RTSS, agrega sm64.us.exe y pon el límite en 30 FPS. Con AMD también puedes usar Radeon Chill (mínimo y máximo en 30).

### 🇬🇧 English
If you don't have an NVIDIA card, use RTSS (RivaTuner Statistics Server, free, works with AMD, Intel and NVIDIA): open RTSS, add sm64.us.exe and set the limit to 30 FPS. With AMD you can also use Radeon Chill (min and max at 30).

### 🇧🇷 Português
Se você não tem placa NVIDIA, use o RTSS (RivaTuner Statistics Server, gratuito, funciona com AMD, Intel e NVIDIA): abra o RTSS, adicione sm64.us.exe e defina o limite em 30 FPS. Com AMD, você também pode usar o Radeon Chill (mínimo e máximo em 30).

### 🇫🇷 Français
Si vous n'avez pas de carte NVIDIA, utilisez RTSS (RivaTuner Statistics Server, gratuit, compatible AMD, Intel et NVIDIA) : ouvrez RTSS, ajoutez sm64.us.exe et fixez la limite à 30 IPS. Avec AMD, vous pouvez aussi utiliser Radeon Chill (min et max à 30).

## 💻 Requisitos / Requirements

| | Mínimo / Minimum | Recomendado / Recommended |
|---|---|---|
| OS | Windows 10/11 64-bit o Linux 64-bit | Windows 10/11 64-bit |
| CPU | Dual-core | Quad-core |
| RAM | 4 GB | 8 GB |
| GPU | DirectX 11 u OpenGL 3.3 | GTX 1050 / RX 560 o mejor |
| Disco | 200 MB libres | 200 MB libres |
| ROM | Super Mario 64 (USA) baserom.us.z64 | Super Mario 64 (USA) baserom.us.z64 |
| Control | Teclado | Mando Xbox (XInput) |

# Super Mario 64 Port

- This repo contains a full decompilation of Super Mario 64 (J), (U), (E), and (SH).
- Naming and documentation of the source code and data structures are in progress.
- Beyond Nintendo 64, it can also target Linux and Windows natively.

This repo does not include all assets necessary for compiling the game.
A prior copy of the game is required to extract the assets.

## Building native executables

### Linux

1. Install prerequisites (Ubuntu): `sudo apt install -y git build-essential pkg-config libusb-1.0-0-dev libsdl2-dev`.
2. Clone the repo: `git clone https://github.com/sm64-port/sm64-port.git`, which will create a directory `sm64-port` and then **enter** it `cd sm64-port`.
3. Place a Super Mario 64 ROM called `baserom.<VERSION>.z64` into the repository's root directory for asset extraction, where `VERSION` can be `us`, `jp`, or `eu`.
4. Run `make` to build. Qualify the version through `make VERSION=<VERSION>`. Add `-j4` to improve build speed (hardware dependent based on the amount of CPU cores available).
5. The executable binary will be located at `build/<VERSION>_pc/sm64.<VERSION>.f3dex2e`.

### Windows

1. Install and update MSYS2, following all the directions listed on https://www.msys2.org/.
2. From the start menu, launch MSYS2 MinGW and install required packages depending on your machine (do **NOT** launch "MSYS2 MSYS"):
  * 64-bit: Launch "MSYS2 MinGW 64-bit" and install: `pacman -S git make python3 mingw-w64-x86_64-gcc`
  * 32-bit (will also work on 64-bit machines): Launch "MSYS2 MinGW 32-bit" and install: `pacman -S git make python3 mingw-w64-i686-gcc`
  * Do **NOT** by mistake install the package called simply `gcc`.
3. The MSYS2 terminal has a _current working directory_ that initially is `C:\msys64\home\<username>` (home directory). At the prompt, you will see the current working directory in yellow. `~` is an alias for the home directory. You can change the current working directory to `My Documents` by entering `cd /c/Users/<username>/Documents`.
4. Clone the repo: `git clone https://github.com/sm64-port/sm64-port.git`, which will create a directory `sm64-port` and then **enter** it `cd sm64-port`.
5. Place a *Super Mario 64* ROM called `baserom.<VERSION>.z64` into the repository's root directory for asset extraction, where `VERSION` can be `us`, `jp`, or `eu`.
6. Run `make` to build. Qualify the version through `make VERSION=<VERSION>`. Add `-j4` to improve build speed (hardware dependent based on the amount of CPU cores available).
7. The executable binary will be located at `build/<VERSION>_pc/sm64.<VERSION>.f3dex2e.exe` inside the repository.

#### Troubleshooting

1. If you get `make: gcc: command not found` or `make: gcc: No such file or directory` although the packages did successfully install, you probably launched the wrong MSYS2. Read the instructions again. The terminal prompt should contain "MINGW32" or "MINGW64" in purple text, and **NOT** "MSYS".
2. If you get `Failed to open baserom.us.z64!` you failed to place the baserom in the repository. You can write `ls` to list the files in the current working directory. If you are in the `sm64-port` directory, make sure you see it here.
3. If you get `make: *** No targets specified and no makefile found. Stop.`, you are not in the correct directory. Make sure the yellow text in the terminal ends with `sm64-port`. Use `cd <dir>` to enter the correct directory. If you write `ls` you should see all the project files, including `Makefile` if everything is correct.
4. If you get any error, be sure MSYS2 packages are up to date by executing `pacman -Syu` and `pacman -Su`. If the MSYS2 window closes immediately after opening it, restart your computer.
5. When you execute `gcc -v`, be sure you see `Target: i686-w64-mingw32` or `Target: x86_64-w64-mingw32`. If you see `Target: x86_64-pc-msys`, you either opened the wrong MSYS start menu entry or installed the incorrect gcc package.
6. When switching between building for other platforms, run `make -C tools clean` first to allow for the tools to recompile on the new platform. This also helps when switching between shells like WSL and MSYS2.

### Debugging

The code can be debugged using `gdb`. On Linux install the `gdb` package and execute `gdb <executable>`. On MSYS2 install by executing `pacman -S winpty gdb` and execute `winpty gdb <executable>`. The `winpty` program makes sure the keyboard works correctly in the terminal. Also consider changing the `-mwindows` compile flag to `-mconsole` to be able to see stdout/stderr as well as be able to press Ctrl+C to interrupt the program. In the Makefile, make sure you compile the sources using `-g` rather than `-O2` to include debugging symbols. See any online tutorial for how to use gdb.

## ROM building

It is possible to build N64 ROMs as well with this repository. See https://github.com/n64decomp/sm64 for instructions.

## Project Structure

	sm64
	├── actors: object behaviors, geo layout, and display lists
	├── asm: handwritten assembly code, rom header
	│   └── non_matchings: asm for non-matching sections
	├── assets: animation and demo data
	│   ├── anims: animation data
	│   └── demos: demo data
	├── bin: C files for ordering display lists and textures
	├── build: output directory
	├── data: behavior scripts, misc. data
	├── doxygen: documentation infrastructure
	├── enhancements: example source modifications
	├── include: header files
	├── levels: level scripts, geo layout, and display lists
	├── lib: SDK library code
	├── rsp: audio and Fast3D RSP assembly code
	├── sound: sequences, sound samples, and sound banks
	├── src: C source code for game
	│   ├── audio: audio code
	│   ├── buffers: stacks, heaps, and task buffers
	│   ├── engine: script processing engines and utils
	│   ├── game: behaviors and rest of game source
	│   ├── goddard: Mario intro screen
	│   ├── menu: title screen and file, act, and debug level selection menus
	│   └── pc: port code, audio and video renderer
	├── text: dialog, level names, act names
	├── textures: skybox and generic texture data
	└── tools: build tools

## Contributing

Pull requests are welcome. For major changes, please open an issue first to
discuss what you would like to change.

Run `clang-format` on your code to ensure it meets the project's coding standards.

Official Discord: https://discord.gg/7bcNTPK
