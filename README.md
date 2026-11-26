# ECHOES OF THE SHADOW

**RPG de acción 2.5D de fantasía oscura desarrollado con Unity y C#.**

## 🎮 Descripción

ECHOES OF THE SHADOW es un videojuego RPG de acción con perspectiva lateral 2.5D, ambientado en un mundo medieval de fantasía oscura.

El jugador recorrerá diferentes escenarios, explorará zonas peligrosas, combatirá contra criaturas hostiles y se enfrentará a jefes finales.

El sistema de combate estará inspirado en juegos como Dark Souls, dando importancia a la esquiva, la resistencia, la defensa y el aprendizaje de los patrones de los enemigos.

El proyecto se desarrolla como trabajo de fin de ciclo de Desarrollo de Aplicaciones Multiplataforma (DAM).

## ⚔️ Características principales

- Perspectiva lateral 2.5D.
- Ambientación medieval de fantasía oscura.
- Sistema de combate y esquiva.
- Gestión de vida y resistencia.
- Enemigos con diferentes comportamientos.
- Jefes finales con patrones de ataque propios.
- Exploración de diferentes escenarios.
- Sistema de inventario y equipamiento.
- Progresión mediante experiencia y niveles.
- Sistema de misiones.
- Sistema de logros.
- Guardado local del progreso de los logros.

## 🛠️ Tecnologías utilizadas

| Tecnología | Utilización |
|---|---|
| Unity | Desarrollo del videojuego |
| C# | Programación de las mecánicas |
| Visual Studio | Entorno de desarrollo |
| Blender | Modelado 3D |
| SQLite | Base de datos de logros |
| ASP.NET Core | Desarrollo de la API local |
| Git | Control de versiones |
| GitHub | Alojamiento del repositorio |
| Trello | Organización de tareas |
| Figma | Diseño de interfaces |

## 🗄️ Base de datos

El proyecto contará con una base de datos relacional SQLite dedicada a gestionar el sistema de logros.

Su objetivo será almacenar los logros disponibles, clasificar sus categorías y registrar el progreso y los desbloqueos de cada perfil.

### Tablas principales

| Tabla | Descripción |
|---|---|
| Perfil | Información de los perfiles de jugador. |
| Categoria | Clasificación de los logros. |
| Logro | Información de los logros disponibles. |
| Progreso_Logro | Progreso individual de cada perfil en los logros. |
| Logro_Desbloqueado | Registro de los logros conseguidos. |

La comunicación con la base de datos se realizará mediante una API local desarrollada con ASP.NET Core, que actuará como intermediaria entre Unity y SQLite.

## 🏗️ Arquitectura

El proyecto estará dividido en tres componentes principales:

1. **Unity (Cliente):** gestionará la jugabilidad, los escenarios, el combate y las interfaces.
2. **ASP.NET Core (Backend):** gestionará las peticiones, validaciones y operaciones relacionadas con los logros.
3. **SQLite (Base de datos):** almacenará los perfiles, logros, categorías, progresos y desbloqueos.

La comunicación entre Unity y el backend se realizará mediante peticiones HTTP a una API local.

## 📁 Estructura del proyecto

```text
ECHOES-OF-THE-SHADOW/
│
├── UnityGame/
│   └── Assets/
│       ├── Scripts/
│       │   ├── Player/
│       │   ├── Combat/
│       │   ├── Enemies/
│       │   ├── Bosses/
│       │   ├── Inventory/
│       │   ├── Quests/
│       │   ├── Achievements/
│       │   └── UI/
│       ├── Animations/
│       ├── Audio/
│       ├── Materials/
│       ├── Models/
│       ├── Prefabs/
│       ├── Scenes/
│       └── Textures/
│
├── Backend/
│   ├── Controllers/
│   ├── Services/
│   ├── Models/
│   ├── Data/
│   └── Program.cs
│
├── Database/
│   ├── create_database.sql
│   ├── insert_data.sql
│   ├── indexes.sql
│   └── triggers.sql
│
├── Documentation/
│   └── Diagrams/
│
└── README.md
```

## 📋 Planificación

El desarrollo se organizará mediante la metodología Kanban utilizando Trello.

Las principales fases serán:

1. Análisis y diseño del proyecto.
2. Desarrollo del personaje y sus movimientos.
3. Implementación del sistema de combate.
4. Desarrollo de enemigos y jefes.
5. Implementación de los sistemas RPG.
6. Desarrollo de la base de datos y el backend.
7. Pruebas, optimización y documentación.

## 🎯 Objetivo del proyecto

El objetivo es desarrollar un videojuego funcional que permita aplicar los conocimientos adquiridos durante el ciclo de Desarrollo de Aplicaciones Multiplataforma, combinando programación orientada a objetos, desarrollo de videojuegos, bases de datos y servicios backend.

## 👨‍💻 Autor

**Alejandro Ocaña Martínez**

Proyecto de fin de ciclo – Desarrollo de Aplicaciones Multiplataforma (DAM).

**Curso académico:** 2026/2027
