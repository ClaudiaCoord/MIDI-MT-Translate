## Управление «мультимедиа клавишами»

Позволяет назначить стандартные мультимедиа команды контролам на `MIDI клавиатуре`. Для успешного использования этих функций, необходимо чтобы управляемое приложение находилось в фокусе.

### Модуль управления «мультимедиа клавишами».

<img src="https://claudiacoord.github.io/MIDI-MT/images/helper/MIDI-MT-PLUGIN-MMKeys.png" title="" alt="" data-align="center">

Этот модуль не имеет настроек, список доступных команд приведён ниже, также он доступен в редакторе контролов.

| MIDI key    | Windows command     |
|:----------- | -------------------:|
| SYS_Zoom    | ZOOM                |
| SYS_Scrub   | LAUNCH MEDIA SELECT |
| SYS_Record  | PLAY                |
| SYS_Rewind  | MEDIA PREV TRACK    |
| SYS_Forward | MEDIA NEXT TRACK    |
| SYS_Play    | MEDIA PLAY PAUSE    |
| SYS_Up      | VOLUME UP           |
| SYS_Down    | VOLUME DOWN         |
| SYS_Left    | VOLUME MUTE         |
| SYS_Right   | PAUSE               |

### Настройки привязок органов управления

Номер группы мультимедиа клавиатуры «253» .

<img src="https://claudiacoord.github.io/MIDI-MT/images/helper/MIDI-MT-PLUGIN-MMKeys-edit1.png" title="" alt="" data-align="center">

- #### Конфигурационный файл

Также возможно отредактировать файл конфигурации в любом привычном для вас редакторе. Основная секция настроек управления мультимедиа клавишами выглядит так:

```
    ...
    },
    "mmkey": {
        "enable": true
    },
    "units":[ ...
        {"scene":176,"id":14,"type":3,"target":253,"longtarget":68,"onoff":"false","value":0},
        {"scene":176,"id":15,"type":3,"target":253,"longtarget":69,"onoff":"false","value":0},
        {"scene":176,"id":16,"type":3,"target":253,"longtarget":70,"onoff":"false","value":0},
    ... ]
```
