$raylib_dir = python -c "import raylib as r, pathlib as p;print(p.Path(r.__file__).parent)"
pyinstaller --hidden-import=win32gui --add-data "$raylib_dir;raylib" --add-data "data;data" --add-data "energy-ball.png;." main.py -n AWD --workpath "bin/build" --distpath "bin"
