# RODRIGO ARMANDO REVELES PICIE "PADRE DE QUARTUS"


# Repositorio de Prácticas en Verilog
Este repositorio contiene el registro completo de las prácticas de diseño digital realizadas durante el curso, enfocadas en la implementación de sistemas embebidos y lógica programable utilizando lenguaje de descripción de hardware Verilog. Cada proyecto incluye los archivos fuente de los módulos lógicos, así como sus respectivos bancos de prueba (Testbench) para la validación mediante simulación.

Descripción General
El objetivo de este espacio es documentar el proceso de aprendizaje y desarrollo de hardware, abarcando desde lógica combinacional básica hasta sistemas secuenciales complejos. Entre los proyectos más destacados se encuentra el controlador de servomotores de alta precisión, el cual utiliza un divisor de frecuencia dedicado para obtener un reloj de 25 MHz. Este módulo permite transformar una entrada numérica de 8 bits (proveniente de switches) directamente en una posición angular (0° a 180°), modulando el pulso PWM mediante contadores de alta velocidad para garantizar una respuesta exacta del actuador.

Estructura del Repositorio
Para facilitar la navegación y el uso de los archivos, el repositorio se organiza de la siguiente manera:

Source Files (.v): Contiene los archivos de diseño principal, incluyendo divisores de frecuencia, módulos PWM y decodificadores.

Testbenches (_tb.v): Incluye los archivos de simulación necesarios para verificar el comportamiento de los módulos en entornos como ModelSim o Vivado. Se han configurado con los tiempos de simulación adecuados para observar fenómenos de larga duración, como los periodos de 20ms en señales PWM.

Documentación: Breves descripciones dentro de cada carpeta que detallan los cálculos matemáticos (ecuaciones de mapeo) y las restricciones de pines aplicadas a la FPGA.
