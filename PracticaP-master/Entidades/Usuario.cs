using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Usuario
    {
        private string nombreUsuario;
        private string contraseña;
        private string nombre;
        private string apellido;
        private string email;
        private int dni;
        private string tipoDni;

        public Usuario() { }
        public Usuario(string nombreUsuario, string contraseña, string nombre,string apellido,string email,int dni,string tipoDni)
        {
            this.nombreUsuario=nombreUsuario;
            this.contraseña=contraseña;
            this.nombre=nombre;
            this.apellido=apellido;
            this.email=email;
            this.dni=dni;
            this.tipoDni=tipoDni;
        }

        public string NombreUsuario { get => nombreUsuario; set => nombreUsuario = value; }
        public string Contraseña { get => contraseña; set => contraseña = value; }
        public string Nombre { get => nombre; set => nombre = value; }
        public string Apellido { get => apellido; set => apellido = value; }
        public string Email { get => email; set => email = value; }
        public int Dni { get => dni; set => dni = value; }
        public string TipoDni { get => tipoDni; set => tipoDni = value; }
    }
}
