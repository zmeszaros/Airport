# Repülőtér Irányító Szimulátor

Egy Delphi alapú repülőtéri kifutó szimulációs program, amely a repülőgépek érkezését és indulását kezeli valós időben.

## Áttekintés

Ez az alkalmazás egy repülőtér irányítótornyának munkáját szimulálja, ahol kezelni kell az érkező és induló járatokat, menetrendeket, és reagálni kell a különböző helyzetekre (normál, késés, vészhelyzet).

## Fő komponensek

### Forrásfájlok (Sources)

- **RepIrany.dpr** - A fő program belépési pontja
- **RepUnit.pas/dfm** - A fő alkalmazás ablak és logika
  - Járatok ütemezése és kezelése
  - Valós idejű kifutó műveletek szimuláció
  - Menetrend kezelés
  - Érkező és induló járatok megjelenítése
- **UjErkezoUnit.pas/dfm** - Új érkező járat felvételére szolgáló párbeszédablak
  - Járatszám, érkezési idő, státusz és üzemanyag szint megadása
  - Automatikus ellenőrzés (elegendő üzemanyag a leszállásig)
- **AboutUnit.pas/dfm** - Névjegy ablak

### Funkciók

- **Menetrend kezelés**: Induló járatok felvétele és szerkesztése
- **Érkező járatok**: Új érkező járatok hozzáadása üzemanyag monitoringgal
- **Valós idejű szimuláció**: Járatok automatikus feldolgozása az aktuális idő alapján
- **Ütemezés**: Prioritás alapú kifutó ütemezés (vészhelyzet > normál > késik)
- **Státusz követés**: 
  - Induló: normál, késik, törölve
  - Érkező: vészhelyzet, normál
- **Üzemanyag figyelés**: Érkező gépek üzemanyag szintjének percenkénti csökkentése
- **Eseménynapló**: Kifutó műveletek időbélyeges naplózása

## Adatbázisok

Az alkalmazás dBASE formátumú táblázatokat használ:
- **MENETREND.DBF** - Induló járatok menetrendje
- **ERKEZO.DBF** - Érkező járatok adatai
- **UTEMEZO.DBF** - Futási idejű ütemező tábla (prioritás alapú rendezéssel)

## Követelmények

- Delphi fejlesztői környezet (Delphi 7 vagy kompatibilis verzió)
- Windows operációs rendszer
- BDE (Borland Database Engine) dBASE támogatással

## Licenc

MIT License - lásd a LICENSE fájlt a részletekért.
