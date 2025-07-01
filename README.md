# Desafio-Eolian-Flutter
Desafío Técnico Eolian Auto Solar  - Sistema de Adquisición de Datos (Flutter)

## Contexto del Problema
En el auto solar, el bus de comunicación CAN es el sistema nervioso que conecta todos los componentes electrónicos. El computador central necesita un software robusto y eficiente para leer los mensajes de este bus (ej. voltaje de la batería, velocidad de las ruedas), mostrarlos en tiempo real para diagnóstico y guardarlos para un análisis post-carrera.
 
Tu misión es diseñar la arquitectura de este sistema y crear un prototipo funcional de una de sus partes clave.

## Avance Semanal

### Semana 1:
**Fecha**: 01/07/2025

#### 1. Actividades Realizadas:
Leí el enunciado y diseñé un diagrama de arquitectura básico, definiendo que patrones de diseño se utilizarán. Recordé la sintaxis de dart. Creé proyecto base en flutter, carpetas importantes para el proyecto y se subió a GitHub. Implementé la interfaz de usuario para visualizar los datos actuales y el módulo Logger.

#### 2. Descubrimientos y Aprendizajes Clave:
Descubrí la libreria de dart (dart:io) que permite crear y escrbir documentos/archivos locales, esto se aplicará para el guardado del historial del log.

#### 3. Bloqueos o Dificultades Encontradas:
El manejo del tiempo ha imposibilitado un avance más veloz en el proyecto.

#### 4. Plan para la Próxima Semana:
Implementar la funcionalidad central del sistema, es decir:
- Simulación de la red CAN y lógica de decodificación
- Conectar el ChangeNotifier para mostrar datos actualizados en la UI en tiempo real.