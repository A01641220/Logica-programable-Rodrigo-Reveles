
**📌 Overview**

Este proyecto implementa un decoder digital en FPGA que:

Recibe 10 señales binarias desde switches físicos de la tarjeta.

Decodifica esas señales.

Genera una salida equivalente en 4 bits (formato decimal/Binary-Coded output).

Traduce la salida a señales para 4 displays de 7 segmentos.

Muestra el resultado directamente en la tarjeta FPGA.

El sistema permite visualizar en tiempo real el resultado de la combinación binaria ingresada desde hardware físico.

**Funcionamiento del Sistema**

**Entradas**

10 switches físicos de la FPGA.

Cada switch representa una señal binaria (1 o 0).

**Procesamiento**

Las 10 entradas binarias se interpretan como una señal tipo decoder.

El sistema traduce esa combinación a una salida codificada de 4 bits.

Esa salida se convierte a señales compatibles con display de 7 segmentos.

**Salidas**

4 displays de 7 segmentos.

Cada display recibe su correspondiente señal segmentada (a–g).
Se muestra el valor decimal equivalente
