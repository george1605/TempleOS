#define KERNEL_MBASE 0x8000000
#define MEGA_BYTE 1024 * 1024

U64 ToVM(char* addr)
{
  return (U64)addr + KERNEL_MBASE;
}

char* FromVM(U64 addr)
{
   return (char*)(addr - KERNEL_MBASE);
}

U0 CopyToUser(U8* kmemory, U64 umemory, U32 size)
{
    while(size > 4)  
      *(U32*)umemory++ = *(U32*)kmemory++;
    while(size > 2)
       *(U16*)umemory++ = *(U16*)kmemory++;
    *(U8*)umemory++ = *(U8*)kmemory++;
}

U64 MapKernel(U8* kmemory, U32 size)
{
    U64 x = ToVM(kmemory);
    CopyToUser(kmemory, x, size);
    return x;
}

U0 InitVMMap()
{
    MapKernel(0xB8000, 2000);
}
