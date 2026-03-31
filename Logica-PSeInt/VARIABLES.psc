// =======================================
// ARCHIVO: 03_Variables_Puras.psc
// TEMA: Gestión de Memoria y Nomenclatura
// =======================================

Algoritmo VARIABLES
	
	// ==================================
	// 1. DECLARACIÓN: (Reservar espacio)
	// ==================================
	// Aquí le decimos a la RAM: "Aparta un lugar para un número con decimales".
	
	// ---------------------------------------------
	// CONCEPTO 1: DEFINIR (La Reserva de Memoria)
	// ---------------------------------------------
	// "Definir" le ordena a la computadora reservar un espacio específico en la RAM antes de ser usado.
	// Es como etiquetar un estante en el almacén de soldadura antes de que llegue el material.
	
	// ------------------------------------------------
	// CONCEPTO 2: COMO REAL (La Precisión Metalúrgica)
	// ------------------------------------------------
	// Usamos "Como Real" para permitir decimales.
    // En metalurgia, un número entero (sin decimales) es un riesgo:
	// Ejemplo: Un Carbono Equivalente (CE) de 0.45 No es igual a 0.
	
	Definir carbono_equivalente Como Real; // Reserva espacio para precisión química.
	
	// --------------------------------------------------------------
	// APLICACIÓN PRÁCTICA DEL CE: El riesgo de la Fisuración en Frío
	// --------------------------------------------------------------
	// Para un programador, 0.45 y 0 pueden ser solo números.
	// Para un supervisor, la diferencia es una estructura colapsada.
	// Si el Carbono Equivalente (CE) se redondea a cero por no usar "Real":
	// 1. El software no detecta la necesidad de precalentamiento.
	// 2. Se forma Martensita (estructura frágil) en el ZAC.
	// 3. El hidrógeno atrapado genera fisuras internas ("clack" metálico").
	
	// -------------------------------------------------------------
	// CONCEPTO 3: NOMENCLATURA INDUSTRIAL (Clean Code para Plantas)
	// -------------------------------------------------------------
	// En el desarrollo de software industrial, los nombres de variables deben ser "Autodocumentados". 
	// No usamos "x" o "c". Usamos el término técnico exacto de la norma (AWS/ASME).
	
	Definir temperatura_precalentamiento Como Real; // Medido en °C según el espesor.
	Definir velocidad_avance Como Real; // Crucial para el Heat Input (kJ/mm).
	
	// ---------------------------------------------------------------------
	// CONCEPTO 4: NUMÉRICOS ENTEROS (Datos de Gestión vs. Datos de Proceso)
	// ---------------------------------------------------------------------
	// Mientras que el proceso físico requiere decimales (Real), la gestión de la trazabilidad utiliza Enteros.
	// Aquí no hay riesgo de redondeo porque son unidades invisibles.
	
	Definir id_junta Como Entero; // Identificador único en el Weld Map.
	Definir numero_operador Como Entero; // Estampa única del soldador calificado.
	
	// -----------------------------------------------------------
	// CONCEPTO 5: CADENAS DE TEXTO (Identificación de Materiales)
	// -----------------------------------------------------------
	// Para un programador: "Como cadena" es un String.
	// Para la industra: Es la especificación ASTM del material base.
	
	Definir especificacion_material Como cadena; // Ejemplo: "ASTM A36" o "API 5L X60".
	Definir tipo_electrodo Como cadena; // Ejemplo: "E7018-1" o "ER70S-6".
	
	// --------------------------------------------------------------
	// CONCEPTO 6: EL HEAT INPUT (El "Cerebro" del Análisis de Datos)
	// --------------------------------------------------------------
	// Un prográmador verá aquí una operación de aritmética simple.
	// El supervisor verá la integridad metalúrgica de la unión.
	//
	// Para este cálculo, la precisión es innegociable. Un error de 0.25 kJ/mm es suficiente para que el grano
	// del metal crezca excesivamente, devilitando la resistencia al impacto de la soldadura.
	//
	// Fórmula técnica: H = (V * I * 60) / (v * 1000) [kJ/mm]
	
	Definir voltaje_arco Como Real; // Tensión en Voltios (V).
	Definir amperaje_real Como Real; // Intensidad en Amperios (A).
	Definir heat_input_calculado Como Real; // Energía apportada por unidad de longitud.
	
	// ----------------------------------------------------------------
	// CONCEPTO 7: DATOS LÓGICOS ( Veredictos de Inspección "Go/No-Go")
	// ----------------------------------------------------------------
	// Para un programador: Es un tipo Booleano (True/False).
	// Para la industria: Es el resultado de un Ensayo No Destructivo (END).
	//
	// Esos datos no guardan número ni nombres, solo estados de VERDAD o FALSEDAD.
	// Son fundamentos para el filtrado masivo: un supervisor puede extraer en un segundo todas las juntas que 
	// fallaron (FALSO) para repararlas.
	
	Definir inspeccion_visual_aprobada Como Logico; // Resultado del examen visual (VT).
	Definir tiene_fisuras_internas Como Logico; // Detectado por Ultrasonido (UT) O RT.
	Definir calificacion_soldador_vigente Como logico; // Validación de la estampa.
	
	// --------------------------------------------------------
	// RESUMEN DE LA FASE  1: (La Estabilización de la Memoria)
	// --------------------------------------------------------
	// Hasta aquí, le hemos dado a la computadora la "Hoja de Ruta".
	// Hemos reservado espacio para:
	// - Decimales (Real): Precisión física y metalúrgica.
	// - Enteros (Entero): Indentificación y trazabilidad.
	// - Texto (Cadena): Especificaciónes de materiales y procesos.
	// - Lógica (Logico): Control de calidad y toma de decisiones.
	
	// Nota: En sistemas SCADA o de monitoreo industrial, declarar correctamente estos tipos previene el 
	// desbordamiento de memoria y asegura la integridad de los reportes automáticos de calidad (KPIs).
	
	// =======================================================
	// 2. ASIGNACIÓN: (Digitalización de Parametros de Campo)
	// =======================================================
	// La asignación es el proceso de "llenar" las variables con información.
	// En programación usamos el operador " <- " para mover el dato a la memoria.
	// Para el supervisor: Es el acto de registrar en el sistema lo que observas en los planos, los certificados y los equipos 
	// de medición.
	
	// --------------------------------------------------------------
	// REGISTRO DE TRAZABILIDAD (Datos de Identificación del Proceso)
	// --------------------------------------------------------------
	id_junta <- 101; // Identificación única del Weld Map.
	numero_operador <- 528; // Número de estampa del soldador.
	especificacion_material <- "ASTM A36";
	tipo_electrodo <- "E7018-1";
	
	// --------------------------------------------------------
	// CARGA DE PARÁMETROS TÉCNICOS (Mediciones del Mundo Real)
	// --------------------------------------------------------
	// Aquí es donde la precisión del tipo "Real" protege la integridad de la estructura al evitar errores de redondeo.
	carbono_equivalente <- 0.45; // Dato clave del certificado del material.
	temperatura_precalentamiento <- 150.0; // Control térmico preventivo.
	
	// Datos capturados por sensores o pinza voltiamperimétrica:
	voltaje_arco <- 24.5;
	amperaje_real <- 180.5;
	velocidad_avance <- 3.5; // Velocidad de desplazamiento (mm/s).
	
	// --------------------------------------------------------
	// VEREDICTO DE CALIDAD (Resultados Lógicos "Pasa/No Pasa")
	// --------------------------------------------------------
	// Se asignann valores de Verdad o Falsedad basados en la norma aplicable.
	inspeccion_visual_aprobada <- Verdadero; // Inspección Visual (VT) exitosa.
	tiene_fisuras_internas <- Falso; // Resultado de Ultrasonido (UT).
	calificacion_soldador_vigente <- Verdadero;
	
	// --------------------------------------------------
	// PROCESAMIENTO AUTOMÁTICO: (Cálculo del Heat Input)
	// --------------------------------------------------
	// La asignación también puede ser el resultado de una fórmula.
	// H = (V * I * 60) / (v * 1000) -> Resultado en kJ/mm.
	// heat_input_calculado <- (voltaje_arco * amperaje_real * 60) / (velocidad_avance * 1000);
	// ---------------------------------------------------------------------
	// PROCESAMIENTO: Cálculo de Energía (Heat Input)
	// ---------------------------------------------------------------------
	// NOTA TÉCNICA SOBRE EL FACTOR 60:
	// La fórmula estándar AWS/ASME incluye un "* 60" para convertir la velocidad de desplazamiento de [mm/min] a [mm/seg]. 
	// COMO NUESTRA VARIABLE (velocidad_avance) YA ESTÁ EN [mm/seg], EL FACTOR 60 SE OMITE PARA EVITAR UN ERROR DE CÁLCULO DE 60 VECES EL VALOR REAL.
	// heat_input_calculado <- (voltaje_arco * amperaje_real * 60) / (velocidad_avance * 1000); // <- NO USAR si v está en mm/s
	// Fórmula corregida:
	
	heat_input_calculado <- (voltaje_arco * amperaje_real) / (velocidad_avance * 1000);
	
	// ====================================================
	// 3. VARIABILIDAD: (Monitoreo de Cambios en el Tiempo)
	// ====================================================
	// Una variable se llama así precisamente porque su valor NO es estático; puede cambiar durante la ejecución del
	// programa.
	//
	// Para el Programador: Representa la actualización del estado (State Update).
	// Para el Supervisor: Representa el seguimiento de pases (Multi-pass Welding).
	
	// ---------------------------------------------------------------
	// CASO DE USO: Cambio de Parámetros entre Pases (Raiz vs Relleno)
	// ---------------------------------------------------------------
	// En soldadura de tuberías o placas gruesas, el calor necesario cambia. 
	// El sistema debe ser capaz de actualizar la misma "caja".
	
	// Registro de Pasada 1 (Raiz/Root):
	amperaje_real <- 120.5;
	// El valor anterior (180.5) desaparece de la RAM y es reemplazado por 120.5.
	
	// Registro de Pasada 2 (Relleno/Fill):
	amperaje_real <- 210.0;
	// El sistema se actualiza nuevamente. Como analistas, esto nos permite comparar si el soldador está respetando los
	// rangos de la WPS en cada etapa.
	
	// ------------------------------------------------------
	// VARIABILIDAD DE ESTADO: (Ciclo de la Vida de la Junta)
	// ------------------------------------------------------
	// Las variables lógicas también varían según avanza la inspección.
	
	inspeccion_visual_aprobada <- Falso; // Iniciamos con la junta sin revisar.
	
	// ... (El Inspector realiza la revisión en campo) ...
	
	inspeccion_visual_aprobada <- Verdadero; // El estado cambia tras la validación.
	
	// ----------------------------------------------------------
	// IMPORTANCIA EN DATA ANALYSIS: Análisis de "Deriva" (Drift)
	// ----------------------------------------------------------
	// Al permitir que las variables cambien, podemos detectar la "Deriva del Proceso".
	// Si el amperaje_real varía erráticamente en un segundo, el software de análisis puede alertar sobre una falla
	// inminente en la fuente de poder o inestabilidad del arco.
	
	// ========================================================
	// 4. CERTIFICACIÓN FINAL: (Evidencia para el Cliente)
	// ========================================================
	// En esta etapa, el programa muestra el "Certificado de Salud" de la soldadura. 
	// ¿Para qué sirve? 
	// Para que el Supervisor no tenga que explicar números sueltos, sino que entregue un veredicto claro que el Cliente 
	// pueda firmar con total confianza.
	
	Escribir "===========================================================";
	Escribir "      REPORTE AUTOMÁTICO DE INSPECCIÓN DE SOLDADURA        ";
	Escribir "===========================================================";
	
	Escribir "ID DE LA JUNTA: ", id_junta;
	Escribir "MATERIAL BASE: ", especificacion_material;
	Escribir "ELECTRODO: ", tipo_electrodo;
	Escribir "OPERADOR (ESTAMPA): ", numero_operador;
	Escribir "-----------------------------------------------------------";
	
	// Datos de Energía
	Escribir "ENERGÍA APORTADA (Heat Input): ", heat_input_calculado, " kJ/mm";
	
	// Resultados de Calidad
	Escribir "VERIFICACIÓN VISUAL (VT): ", inspeccion_visual_aprobada;
	Escribir "INTEGRIDAD ESTRUCTURAL (UT/RT): ", (NO tiene_fisuras_internas);
	
	Escribir "-----------------------------------------------------------";
	// CONCLUSIÓN TÉCNICA:
	Escribir "VEREDICTO TÉCNICO: JUNTA #", id_junta, " VALIDADA.";
	Escribir "El análisis de datos confirma que el calor aportado de ", heat_input_calculado, " kJ/mm";
	Escribir "es óptimo para el material ", especificacion_material, ", asegurando una unión";
	Escribir "metalúrgicamente estable y conforme a la norma del proyecto.";
	Escribir "===========================================================";
FinAlgoritmo

// ==========================================================================
//                    REFLEXIÓN FINAL (Ruta Data Analyst)
// ===========================================================================
// Este algoritmo demuestra el dominio del Ciclo de Vida del Dato:
// 1. DECLARACIÓN: Arquitectura de memoria y selección de tipos (Real/Integer).
// 2. ASIGNACIÓN: Captura técnica de parámetros de campo.
// 3. VARIABILIDAD: Manejo de estados dinámicos del proceso.
// 4. SALIDA: Comunicación de resultados para control de calidad (KPIs).
//
// El uso de nombres autodescriptivos (Clean Code) asegura que el sistema 
// sea mantenible por cualquier equipo de ingeniería en el futuro.
// ============================================================================
	
	
