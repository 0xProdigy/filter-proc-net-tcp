🧪 Script Bash - Puertos en uso en formato decimal
Este script en Bash analiza el archivo /proc/net/tcp del sistema GNU/Linux para extraer los puertos locales en uso (en formato hexadecimal) y los convierte a su equivalente decimal. Es una herramienta sencilla pero útil para observar conexiones activas sin usar herramientas externas como netstat o ss.

⚙️ ¿Qué hace?
Lee /proc/net/tcp, que contiene información sobre las conexiones TCP activas.

Extrae la columna que representa la dirección local.

Filtra los puertos hexadecimales y los convierte a decimal usando bc.

Imprime los puertos abiertos de forma legible.

📄 Ejemplo de salida 
Puerto: 22
Puerto: 80
Puerto: 443
💡 Utilidad
Ideal para:

Scripts de auditoría de red.

Análisis forense básico.

Aprendizaje sobre internals de Linux sin depender de herramientas de alto nivel.
