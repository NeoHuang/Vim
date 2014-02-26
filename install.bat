rmdir "C:\Program Files\Vim\vimfiles\"  /Q /S 
xcopy .vim "C:\Program Files\Vim\vimfiles\" /Y /E
copy .vimrc "C:\Program Files\Vim\_vimrc" /Y
