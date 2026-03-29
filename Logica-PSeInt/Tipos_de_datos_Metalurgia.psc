// ==================================================================================
// ARCHIV0: 02_Tipos_de_Datos_Industriales.psc
// TEMA: Tipos de datos aplicados a Metalurgia/Soldadura
// OBJETIVO: Clasificar parámetros reales de un WPS (Welding Procedure Specification)
// ==================================================================================

Algoritmo Tipos_de_datos_Metalurgia
	
	// ----------------------------------------
	// 1. DATOS SIMPLES: Parametros del Proceso
	// ----------------------------------------
	
	// A) NUMÉRICOS ENTEROS: (Sin decimales):
	// - Ejemplo: ID_Junta <- 101;
	    // ---------------------------------------------------------
	    // C0NTEXTO INDUSTRIAL: Trazabilidad y Seguimiento de Juntas
	    // ---------------------------------------------------------
	    // 1. LA VARIABLE (ID_Junta): Es el identificador único o "DNI" de la soldadura.
	    //    Es la clave para el control de calidad.
	    // 2. LA ASIGNACIÓN (<-): Representa el acto de REGISTRAR en el sistema que la inspección actual
        //    corresponde a la pieza 101.
	    // 3. EL VALOR (101): Es el dato extraido del "Wel Map" (Plano).
	    //    Al digitalizarlo, el Supervisor puede generar reportes automáticos y rastrear al soldador
	    //    o el lote de material.
	    // --------
	    // UTILIDAD
	    // --------
	    // Si el día de mañana un cliente te pregunta:"¿Por qué falló la junta 101?", tú no vas a buscar entre miles
	    // de papeles. Vas a tu programa de Python, escribes ID_junta = 101 y en un segundo tienes el nombre del
	    // soldador, el lote del electrodo que usó y hasta la temperatura del día que se soldó.
	// - Ejemplo: Numero_Pasadas <- 3;
	    // *CONTEXTO: Indica cuántas veces el soldador recorrió la junta.
	    // *IMPORTANCIA: Un cambio en el número de pasadas afecta el "Heat Input" (Calor Aportado) y puede alterar la
	    // microestrucctura.
	// *Uso en Data:* Conteo de piezas producidas o identificación de lotes.
	
	// B) NUMÉRICOS REALES (Con decimales):
	// - Ejemplo: Amperaje <- 125.5; // Corriente en Amperios.
	// - Ejemplo: Velocidad_Enfriamineto <- 45.2; // Grados por segundo.
	    // * TRADUCCIÓN: La temperatura cambia 45.2 grados CADA 1 SEGUNDO,
	    // * IMPACTO: Si el enfriamiento es muy veloz (> 100 °C/S), la soldadura se vuelve frágil (Martensita).
	    //            Si es muy lento (< 10 °C/S), pierde resistencia (se vuelve blanda).
	// *Uso en Data:* Parámetros críticos para el cálculo de la ZAC (Zona Afectada por el Calor).
	
	// c) LÓGICOS (Booleanos):
	// - Ejemplo: Paso_Ensayo:Doblez <- VERDADERO;
	    // * TIPO DE DATO: Lógico (Booleano).
	    // * SIGNIFICADO: Es el veredicto final de la prueba mecánica.
	    // * APLICACIÓN: Permite al Supervisor filtrar rápidamente qué piezas están aprobadas (VERDADERO) 
	    //               y cuáles requieren reparación (FALSO).
	    //               Es la base para calcular indicadores de calidad KPIs (Indicador Clave de Desempeño).
	// - Ejemplo: Tiene_Porosidad <- FALSO;
	// *Uso en Data:* Control de calidad (Pasa/No Pasa).
	
	// D) CARACTER / CADENA (texto):
	// - Ejemplo: Proceso <- "Gmaw"; // Soldadura de arco metálico con gas.
	// - Ejemplo: Material_Base <- "Acero ASTM A 36";
	// *Uso en Data:* Clasificación de materiales y tipos de electrodos (E7018).
	
	// ---------------------------------------------------------
	// 2. DATOS COMPLEJOS: Monitoreo Industrial
	// ---------------------------------------------------------
	
	// - ARREGLOS: Una lista de temperaturas tomadas cada minuto.
	// - ESTRUCTURAS: Un "Registro de Soldador" que incluye su nombre, código y fecha de certificación.
	
FinAlgoritmo

// =============================================================
// REPASO:
// 1. Un error común es guardar el Amperaje como Texto "125".
//    Si haces eso, no podrás calcular el Calor Aportado (Heat Input).
// 2. En metalurgia, los datos REALES son los reyes; los decimales 
//    determinan si una aleación cumple con la norma o no.
// =============================================================

	
