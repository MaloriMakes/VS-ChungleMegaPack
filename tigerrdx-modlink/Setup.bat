set "species=tiger"
set "model=tiger-faceless"
set "backDir=C:\VS-Backdrop"
set "workDir=%~dp0

mkdir C:\VS-Backdrop
mkdir %appdata%\Vintagestory\assets\survival\textures\entity\humanoid\seraphskinparts\body

mklink /D %appdata%\VintagestoryData\mods\%species%rdx-modlink "%workDir%"
mklink %backDir%\%species%-backdrop.json "%workDir%\assets\%species%rdx\shapes\entity\humanoid\%model%.json"
mklink %appdata%\Vintagestory\assets\survival\textures\entity\humanoid\seraphskinparts\body\%species%bodytex.png "%workDir%\assets\%species%rdx\textures\entity\humanoid\seraphskinparts\body\%species%bodytex.png"