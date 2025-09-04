module starter::hola{   // Como buena práctica, en lugar de 'hola', debería haber 'starter'
        use std::debug::print;
        use std::string::{String, utf8};

    public struct Usuario has drop{     // Un 'struct' es una clase
        nombre: String,
        edad: u8,
        vivo: bool,
    }

    fun practica(usuario: Usuario){
    //    let mut variable = 256u16;   // Colocar un '_' al iniciar el nombre de la variable indica que no se usará
                            // Si se quiere hacer que la variable pueda cambiar (mutar) debe usarse 'let mut'
                            // Es decir, si solo tiene 'let' es una constante. Sin embargo, las constantes puras se escriben como 'const NOMBRE'
                            // Se puede especificar el tipo como 'let mut nombre: u8 = 10' (u8 = unsigned 8 Bytes)
    //    let mut otra = 2u8;
    //    let mut suma = variable + (otra as u16);
    //    print(&suma);    // El '&' es una referencia
        if(usuario.edad > 18){
            print(&utf8(b"Acceso permitido"));
        }
        else if(usuario.edad == 18){
            print(&utf8(b"¡ya eres mayor!"));
        }
        else {
            print(&utf8(b"Acceso denegado"));
        }
    }

    #[test]
    fun prueba(){
        let usuario = Usuario {
            nombre: utf8(b"David Bermúdez"),
            edad: 28,
            vivo: true,
        };
        practica(usuario);
    }
}