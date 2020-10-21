format pe console 4.0
include 'WIN32AX.INC'
 
.data
 buf db 'А сейчас мы поробуем что-то записать в файл с названием test.txt.'
 bufsize = $ - buf
 byteswritten dd ?
.code
 main:
 invoke  CreateFile, 'test.txt', GENERIC_WRITE, 0, 0, 4, FILE_ATTRIBUTE_NORMAL, 0
 invoke  WriteFile, eax, buf, bufsize, byteswritten, 0
 invoke  ExitProcess, 0
 
.end main