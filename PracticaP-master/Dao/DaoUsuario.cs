using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;

namespace Dao
{
    public class DaoUsuario 
    {
       public Usuario login(string usuario, string contraseña)
        {
            ConexionNpgsql conexion = new ConexionNpgsql();
            Usuario u=null;

            string query = "select * from usuarios where nombreusuario='"+usuario+"' and password='" + contraseña + "';";
            conexion.setQuery(query);
            conexion.ejecutarReader();
            if (conexion.reader.Read())
            {
                    u= new Usuario(
                    conexion.reader.GetString(0),
                    conexion.reader.GetString(1),
                    conexion.reader.GetString(2),
                    conexion.reader.GetString(3),
                    conexion.reader.GetString(4),
                    Int32.Parse(conexion.reader.GetString(5)),
                    conexion.reader.GetString(6)
                    );
            }
            conexion.reader.Close();
            return u;
        }
    }
}
