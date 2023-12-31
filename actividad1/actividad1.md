### Andrea María Cabrera Rosito - 202010918
# TIPOS DE KERNEL Y SUS DIFERENCIAS
Para poder entender el kernel, es necesario saber qué es. **Kernel** se refiere al centro del sistema operativo y administra las funciones principales del hardware para cualquier tipo de computadora. Existen 3 tipos:

- Kernel Monolítico: También se le denomina núcleo monolítico. Es una arquitectura de SO donde su estado es del modo supervisor (protegido). Se encarga especialmente de gestión de memoria y procesos, comunicación de estos y se le atribuye las funciones de soporte tanto de drivers como hardware. Además, el acceso del privilegio completo sobre los diversos componentes son conservados por este. 
Su tamaño se considera grande; cada vez que una nueva funcionalidad sea agregada, el kernel deberá de recompilarse completamente y reiniciarse. También existe la posibilidad de que si existe un error en su rutina, el error puede propagarse por toda su esctructura ya que los componenentes funcionales del núcleo poseen acceso a los demás datos que se encuentren internamente y a las rutinas de estos.

- Microkernel: También escrito como μkernel, como su nombre lo indica, no posee gran tamaño - este diseño es intencional y fue hecho de esta forma para evitar que un fallo no congele o paralice todo el sistema operativo, igualmente se diseñó también para tener varios módulos para que trabaje como un kernel de gran tamaño. Este núcleo provee un conjunto de llamadas primitivas para los servicios primitivos como direcciones, comunicación entre los procesos y planificación básica. Los demás servicios tales como la gestión de memoria, sistemas de archivos, operadores de entrada y salida, y demás son ejecutados como procesos servidores en _espacio de usuario_.

- Kernel híbrido: Este tipo de kernel nace por la combinación entre el kernel monolítico y el microkernel por lo que usa los coneptos de estos dos, haciendo énfasis en el paso de mensajes y migración del código no esencial hacia el anteriormente menciondado espacio de usuario. Como resultado, el kernel de considerable tamaño se hace en uno más compacto y modulable. 

# USER VS KERNEL MODE
Se le reconoce al **Kernel Mode** también como el modo de sistema, los procesos que se ejecutan en este modo poseen acceso sin restricción al hardware. Por otro lado, el **User Mode** es un modo sin privilegios para el usuarios de los programas. En este caso, los procesos ejecutados en este modo, el acceso al CPU y la memoria se encuentran restringidos. 

En este último modo es donde la mayoría de aplicaciones y programas corren, esto porque al tener dichas restricciones, se asegura que las instrucciones ejecutadas sean seguras y no comprometan el sistema. Por otro lado, el kernel mode es utilizado por los controladores de dispositivos ya que se consideran como esenciales para poder completar sus tareas. Si es necesario que un programa en modo usuario realice una instrucción en el kernel mode, al SO se le solicita que realice la tarea en su nombre.

Esta separación de modos se clasifica como una medida de seguridad y protección al sistema, ayuda en la mitigación de errores y controla los procesos maliciosos que puedan comprometer a el sistema. 
