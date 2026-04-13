# Ruta Data Analyst Industrial - Kevin Velchoq

Este repositorio es el registro de mi avance pasando de la supervisión de campo al análisis de datos técnicos. No se trata solo de escribir código, sino de aplicar la lógica de programación para que los procesos en la planta sean más seguros y eficientes.

---

## Proyecto Destacado: Gestión de Trazabilidad y Soldadura (VARIABLES.psc)

Este algoritmo en PSeInt automatiza el control de calidad, transformando los datos crudos que capturamos en el arco en información real para el dossier de calidad.

### Lógica de Supervisor Aplicada al Código

* **Gestión de Memoria y Precisión Química**: En metalurgia, un número entero es un riesgo; por eso uso variables REALES para el Carbono Equivalente (CE). Un 0.45 no es igual a 0. Esta precisión determina si la estructura es propensa a fisuras o si requiere precalentamiento para evitar fallas en la ZAC.
* **Cálculo de Heat Input con Nota Técnica**: La fórmula estándar incluye un factor 60 para convertir la velocidad de minutos a segundos. Incluí una nota técnica aclarando que, como mi variable ya está en mm/s, este factor se debe omitir. Dejé la fórmula errónea comentada con un aviso de "NO USAR" para advertir al programador y evitar un error de cálculo de 60 veces el valor real.
* **Nomenclatura y Clean Code**: No uso variables genéricas. Los nombres son autodescriptivos como temperatura_precalentamiento o tipo_electrodo. Uso los términos técnicos exactos de las normas AWS/ASME para que cualquier ingeniero pueda entender el proceso sin manuales.
* **Trazabilidad Total**: El sistema captura el ID de la junta, el número de estampa del soldador y la especificación del material base como ASTM A36. Esto asegura que cada dato tenga un responsable y una ubicación clara en el Weld Map.

---

## Impacto en la toma de decisiones

El objetivo de este software es generar un veredicto técnico basado en datos precisos. Al final, el programa entrega un reporte de inspección que valida si el calor aportado fue el adecuado para el material utilizado. Esto permite que el veredicto técnico sea una evidencia de seguridad que el cliente pueda validar y firmar con total confianza.

---
Análisis de Datos e Ingeniería de Soldadura
