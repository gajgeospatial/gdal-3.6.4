echo vs2022 Directories
if not exist msvc\\vc143 mkdir msvc\\vc143
if not exist msvc\\vc143\\x64 mkdir msvc\\vc143\\x64
if not exist msvc\\vc143\\x64\\vs2022_Debug mkdir msvc\\vc143\\x64\\vs2022_Debug
if not exist msvc\\vc143\\x64\\vs2022_Debug\\gdalplugins mkdir msvc\\vc143\\x64\\vs2022_Debug\\gdalplugins
if not exist msvc\\vc143\\x64\\vs2022_Release mkdir msvc\\vc143\\x64\\vs2022_Release
if not exist msvc\\vc143\\x64\\vs2022_Release\\gdalplugins mkdir msvc\\vc143\\x64\\vs2022_Release\\gdalplugins
if not exist msvc\\vc143\\x64\\bin mkdir msvc\\vc143\\x64\\bin
if not exist msvc\\vc143\\x64\\bin\\gdalplugins mkdir msvc\\vc143\\x64\\bin\\gdalplugins
if not exist msvc\\vc143\\x64\\bin\\java mkdir msvc\\vc143\\x64\\bin\\java
if not exist msvc\\vc143\\x64\\data mkdir msvc\\vc143\\x64\\data
copy /y data\* msvc\\vc143\\x64\\data

