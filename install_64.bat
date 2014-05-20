rmdir "C:\Program Files (x86)\Vim\vimfiles\"  /Q /S 
xcopy .vim "C:\Program Files (x86)\Vim\vimfiles\" /Y /E
copy .vimrc "C:\Program Files (x86)\Vim\_vimrc" /Y
