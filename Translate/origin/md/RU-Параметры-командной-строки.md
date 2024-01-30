### Параметры командной строки

При запуске, возможно задать некоторые параметры с помощью командной строки. Поддерживаються следующие ключи:  

| Command             | Description                                          |
|:------------------- |:---------------------------------------------------- |
| --conf=path to file | Установить __файл конфигурации__ по умолчанию        |
| --mixer=yes/no      | Установите запуск сервиса «Audio Mixer» по умолчанию |
| --log=yes/no        | Записывать лог файл по умолчанию                     |

Пример правильного заполнения:  

```
  "C:\Programm Files\MIDI-MT\MIDIMT.exe" "--conf=C:\AppData\My Config\MIDI-MT\my.cnf" --mixer=yes --log=no
или:
  "C:\Programm Files\MIDI-MT\MIDIMT.exe" --conf=C:\AppData\MIDI-MT\my.cnf --mixer=true --log=false
```

![ярлыки командной строки - MIDI MT](https://claudiacoord.github.io/MIDI-MT/images/helper/MIDI-MT-CommandLine.png)  

Пример неверного заполнения:  

```
  "C:\Programm Files\MIDI-MT\MIDIMT.exe" --conf="C:\AppData\MIDI-MT\my.cnf" --mixer="yes" --log='false'
```
