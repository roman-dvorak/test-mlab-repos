<!--- Author:Jan Chroust: --->
<!--- AuthorEmail:chroust@mlab.cz: --->
#<!--- Name:SHT31V01A: --->SHT31V01A
<!--- Longname --->SHT31V1A – digitální vlhkoměr a teploměr

<!--- lead --->
Jedná se o modul, který je možné osadit IO SHT30 nebo SHT31, které umí měřit relativní vlhkost a teplotu s velkou přesností a stabilitou. Rozsah měřené vlhkosti je 0 % až 100 %. Teplota je měřena v rozsahu   -40 C až 125 
 C. Komunikace probíhá přes rozhranní I2C.
<!--- Elead --->

<!--- Description --->
# Technické parametry




| Parametr          | Hodnota       | Poznámka             |
| ----------------- | ------------- | -------------------- |
| Relativní vlhkost | 0 % - 100 %   | Typ. přesnost dle IO |
| Teplota           | -40C - 125C   | Typ. přesnost dle IO |
| integrovaný obvod | SHT30, SHT31  |                      |
| Rozhraní | I2C | |
| Napájení | Min. 2.4 V - max. 5.5 V | |
| Rozměry | 9.65 x 40.13 mm | |



<!--- EDescription --->

<!--- Content --->
#Popis konstrukce
## Úvodem
Jedná se o modul založený na IO SHT31V01A, který umožňuje měření relativní vlhkosti a teploty a velkou přesností a stabilitou. Další přesné informace IO je možné vyčíst z oficiálního dokumentačního listu výrobce. Modul obsahuje veškeré potřebné součástky pro správný chod.

<!--- scheme ---><!--- Escheme --->
<!---![alt text](https://cdn.rawgit.com/roman-dvorak/test-mlab-repos/master/Modules/Sensors/SHT31V01A/SCH_PCB/SHT31V01A.svg "Logo Title Text 1")--->


#Osazení a oživení
##Osazení

<!---![alt text](https://cdn.rawgit.com/roman-dvorak/test-mlab-repos/blob/master/Modules/Sensors/SHT31V01A/DOC/new_src/SHT31V01A-MLABb.svg "aa")--->
<!---![alt text](https://cdn.rawgit.com/roman-dvorak/test-mlab-repos/blob/master/Modules/Sensors/SHT31V01A/DOC/new_src/SHT31V01A-MLABa.svg "bb")--->


##Oživení
Je potřeba provést kontrolu zda není na plošném spoji zkrat a zda je dobře zapájen IO. Jinak není třeba nic oživovat, pouze připojit a napsat program. Když je nulovým odporem osazena pozice R4 adresa modulu je 0x44, pokud je osazena pozice R3 je adresa 0x45.

##Program
Vzorový program se nachází ve složce SW modulu. Pro spuštění je potřeba mít nainstalovaný pyMLAB.
<!--- EContent --->
