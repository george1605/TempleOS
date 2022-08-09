struct __HDC
{
  CDC* ptr; 
  U16 width, height;
  U16 off; // offset - for metadata
};

#define HDC __HDC
