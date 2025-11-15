# Proyecto Linux - Grupo 10

## Descripción del Proyecto
Implementación de un servidor Linux automatizado con Docker para la asignatura Introducción al Software Libre.

## Integrantes del Grupo
- Andres Zavala Alvarado ZA21010
- Joel Isaac Chavez Areval CA24016
- Diego Oswaldo Meza Argueta MA20081
- [Nombre 4]

## Estructura del Proyecto
🖥️ Despliegue del Servidor en Oracle Cloud — Detalle del Proceso

A continuación se documentan los pasos realizados para la creación y 
configuración de un servidor en Oracle Cloud Infrastructure (OCI) utilizando el nivel gratuito 
(Free Tier). Este servidor sirve como entorno base para el proyecto.

1. Creación de la cuenta en Oracle Cloud

Se inició el proceso registrando una cuenta en Oracle Cloud, aprovechando los recursos gratuitos que ofrece el programa Free Tier.
Este nivel permite desplegar infraestructura básica sin costo, ideal para entornos de práctica, pruebas o pequeños servidores de producción.

2. Creación de la máquina virtual (Compute Instance)

Una vez activada la cuenta, se procedió a crear una instancia de cómputo con las siguientes características:

Procesador: 1 CPU ARM (Ampere)

Memoria RAM: 6 GB

Almacenamiento: 50 GB de volumen en bloque (Boot Volume)

Sistema Operativo: Canonical Ubuntu Server 20.04 LTS (imagen oficial de Oracle Marketplace)

La arquitectura ARM es compatible con el Always Free Tier, ofreciendo buena eficiencia energética 
y rendimiento aceptable para servicios ligeros o medianos.

3. Configuración de red e IP pública

Para permitir que el grupo de trabajo pueda conectarse al servidor de forma remota, 
se configuraron los siguientes aspectos:

Asignación de una IP pública estática (Public IP) asociada a la instancia.

Ajustes en el Virtual Cloud Network (VCN):

Reglas de ingress para permitir conexiones entrantes por el protocolo SSH (puerto 22).

Reglas de egress para habilitar tráfico saliente estándar.

Con esta configuración, cualquier integrante del equipo puede conectarse desde su sistema operativo preferido usando herramientas como:

PuTTY (Windows)

OpenSSH (Linux, macOS o WSL)

4. Inicialización de la instancia

Una vez creada la máquina virtual y asignada la IP pública, 
la instancia fue iniciada y puesta en funcionamiento.
Desde este punto ya es posible:

Conectarse vía SSH.

Actualizar paquetes del sistema.

Instalar servicios adicionales según lo requerido por el proyecto.

Configurar usuarios, permisos y componentes del entorno.
