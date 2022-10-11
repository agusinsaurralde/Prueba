using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dao;
using Entidades;

namespace Negocio
{
    public class NegocioDocente:IABML<Docente>
    {
        private DaoDocente dao = new DaoDocente();

        public void create(int dni, String tipoDni, String nombre, String apellido, String email, String telefono, String direccion, String fechaNacimiento, String fotoPerfil, String cv)
        {
            dao.create(dni, tipoDni, nombre, apellido, email, telefono, direccion, fechaNacimiento, fotoPerfil, cv);
        }

        public void delete(int dni,string razon)
        {
            dao.delete(dni,razon);
        }

        public List<Docente> readAll()
        {
            return dao.readAll();
        }

        public Docente readByDni(int dni)
        {
            return dao.readByDni(dni);
        }

        public Boolean verificarDni(int dni)
        {
            if (dao.verificarDni(dni)) { return true; }
          return false;
        }

        public List<Docente> readByNameAndLastName(string buscar)
        {
            return dao.readByNameAndLastName(buscar);
        }

        public void update(Docente obj)
        {
            dao.update(obj);
        }

        
    }
}
