Este proyecto implementa un detector de números primos en FPGA que:

Recibe una entrada binaria de 4 bits desde los switches físicos.

Evalúa si el número ingresado es primo.

Enciende un LED indicador si el número es primo.

Muestra el estado directamente en la tarjeta FPGA.

El sistema permite probar números del 0 al 15 usando hardware real.

**⚙️ Funcionamiento del Sistema**
**Entradas**

4 switches físicos de la FPGA.

Cada switch representa un bit (SW[3:0]).

Rango de entrada: 0000 (0) a 1111 (15).

**Procesamiento**

La combinación binaria se interpreta como un número entero.

Se evalúa si el número pertenece al conjunto de números primos dentro del rango.
