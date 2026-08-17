set "species=avali"
set "model=avali-faceless"
set "backDir=C:\VS-Backdrop"
set "workDir=%~dp0

mkdir C:\VS-Backdrop
mkdir %appdata%\Vintagestory\assets\survival\textures\entity\humanoid\seraphskinparts\body
mkdir %appdata%\Vintagestory\assets\survival\textures\entity\humanoid\seraphskinparts\face

rmdir %appdata%\VintagestoryData\mods\%species%rdx-modlink "%workDir%"
mklink /D %appdata%\VintagestoryData\mods\%species%rdx-modlink "%workDir%"
del %backDir%\%species%-backdrop.json
mklink %backDir%\%species%-backdrop.json "%workDir%\assets\%species%rdx\shapes\entity\humanoid\%model%.json"
del %backDir%\%species%bodytex.png
mklink %backDir%\%species%bodytex.png "%workDir%\assets\%species%rdx\textures\entity\humanoid\seraphskinparts\body\%species%bodytex.png"
del %appdata%\Vintagestory\assets\survival\textures\entity\humanoid\seraphskinparts\body\%species%bodytex.png
mklink %appdata%\Vintagestory\assets\survival\textures\entity\humanoid\seraphskinparts\body\%species%bodytex.png "%workDir%\assets\%species%rdx\textures\entity\humanoid\seraphskinparts\body\%species%bodytex.png"
del %appdata%\Vintagestory\assets\survival\textures\entity\humanoid\%species%tex.png
mklink %appdata%\Vintagestory\assets\survival\textures\entity\humanoid\%species%tex.png "%workDir%\assets\%species%rdx\textures\entity\humanoid\%species%tex.png"