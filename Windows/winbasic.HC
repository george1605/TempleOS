static U0 __memset(const U8* memory, U8 value, U32 size)
{
    for(int i = 0;i < size && memory[i] != 0;i++)
        memory[i] = value;
}

U0 ZeroMemory(U8* memory, U32 size)
{
    __memset(memory, 0, size);
}