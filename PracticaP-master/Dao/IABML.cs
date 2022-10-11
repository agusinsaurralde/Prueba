using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dao
{
    public interface IABML<T>
    {
        void create(int dni, String tipoDni, String nombre, String apellido, String email, String telefono, String direccion, String fechaNacimiento, String fotoPerfil, String cv);
        void delete(int id,string razon);
        void update(T obj);
        List<T> readAll();
    }
}
