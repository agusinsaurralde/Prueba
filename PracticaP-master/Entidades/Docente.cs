using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Docente
    {
        private int dni;
        private string tipo;
        private string nombre;
        private string apellido;
        private string email;
        private string telefono;
        private string direccion;
        private DateTime fechaNacimiento;
        private string fotoPerfil;
        private string cv;
        private DateTime fechaAlta;
        private DateTime fechaBaja;
        private bool estado;

        public Docente() { }

        public int Dni { get => dni; set => dni = value; }
        public string Tipo { get => tipo; set => tipo = value; }
        public string Nombre { get => nombre; set => nombre = value; }
        public string Apellido { get => apellido; set => apellido = value; }
        public string Email { get => email; set => email = value; }
        public string Telefono { get => telefono; set => telefono = value; }
        public string Direccion { get => direccion; set => direccion = value; }
        public DateTime FechaNacimiento { get => fechaNacimiento; set => fechaNacimiento = value; }
        public string FotoPerfil { get => fotoPerfil; set => fotoPerfil = value; }
        public string Cv { get => cv; set => cv = value; }
        public DateTime FechaAlta { get => fechaAlta; set => fechaAlta = value; }
        public DateTime FechaBaja { get => fechaBaja; set => fechaBaja = value; }
        public bool Estado { get => estado; set => estado = value; }
    }
}
