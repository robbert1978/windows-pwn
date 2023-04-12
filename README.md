
Start with

```
git clone --recurse-submodules https://github.com/robbert1978/windows-pwn windows-pwn
```

Update pwn++ lib

```cmd
# cd windows-pwn
# mkdir deps
# git submodule add 'https://github.com/hugsy/pwn--' deps/pwn++
git submodule update --init --recursive
```


Open `windows-pwn` in Visual Studio then open the terminal and run: 

```cmd
cmd /c "rmdir /s source"

cmake -S . -B ./build -A x64 -DPWN_BUILD_DOCS=OFF -DPWN_DISASSEMBLE_X86=ON -DPWN_DISASSEMBLE_ARM64=ON -DPWN_BUILD_TOOLKIT=OFF -DPWN_BUILD_TESTING=OFF -DPWN_ENABLE_LUA_BACKDOOR=OFF -DPWN_LOG_USE_COLOR=ON

cmake --build ./build --verbose --parallel 2 --config Debug
```
