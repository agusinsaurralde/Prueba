using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;

namespace Dao
{
    public class DaoDocente : IABML<Docente>
    {
        public void create(int dni, String tipoDni, String nombre, String apellido, String email, String telefono, String direccion, String fechaNacimiento, String fotoPerfil, String cv)
        {
            ConexionNpgsql conexion = new ConexionNpgsql();
            Boolean estado = true;
            string query = "insert into docentes values ('" + dni + "', '" + tipoDni + "', '" + nombre.ToLower() + "', '" + apellido.ToLower() + "', '" + email + "', '" + telefono + "', '" + direccion + "', '" + fechaNacimiento + "', '" + fotoPerfil + "', '" + cv + "', current_date, null, '" + estado + "')";
            conexion.setQuery(query);
            conexion.guardar();
            conexion.close();
        }

        public void delete(int dni,string razon)
        {
            ConexionNpgsql conexion = new ConexionNpgsql();
            string query = "update docentes set estado='false', fechabaja=current_date, motivobaja='"+razon+"' where dni='" + dni + "';";
            conexion.setQuery(query);
            conexion.guardar();
            conexion.close();
        }

        public List<Docente> readAll()
        {
            List<Docente> lista = new List<Docente>();
            ConexionNpgsql conexion = new ConexionNpgsql();
            string query = "select * from docentes where estado='true';";
            conexion.setQuery(query);
            conexion.ejecutarReader();
            while (conexion.reader.Read())
            {
                Docente aux = new Docente();
                aux.Dni = Int32.Parse(conexion.reader.GetString(0));
                aux.Tipo = conexion.reader.GetString(1);
                aux.Nombre = conexion.reader.GetString(2);
                aux.Apellido = conexion.reader.GetString(3);
                aux.Email = conexion.reader.GetString(4);
                aux.Telefono = conexion.reader.GetString(5);
                aux.Direccion = conexion.reader.GetString(6);
                aux.FechaNacimiento = conexion.reader.GetDateTime(7);
                aux.FotoPerfil = conexion.reader.GetString(8);
                aux.Cv = conexion.reader.GetString(9);
                aux.FechaAlta = conexion.reader.GetDateTime(10);
                aux.Estado = conexion.reader.GetBoolean(12);
                lista.Add(aux);
            }
            conexion.closeReader();
            conexion.close();
            return lista;
        }

        public Docente readByDni(int dni)
        {

            Docente docente = new Docente();
            ConexionNpgsql conexion = new ConexionNpgsql();
            string query = "select * from docentes where estado='true' and dni='"+dni+"';";
            conexion.setQuery(query);
            conexion.ejecutarReader();
            if (conexion.reader.Read())
            {
                docente.Dni = Int32.Parse(conexion.reader.GetString(0));
                docente.Tipo = conexion.reader.GetString(1);
                docente.Nombre = conexion.reader.GetString(2);
                docente.Apellido = conexion.reader.GetString(3);
                docente.Email = conexion.reader.GetString(4);
                docente.Telefono = conexion.reader.GetString(5);
                docente.Direccion = conexion.reader.GetString(6);
                docente.FechaNacimiento = conexion.reader.GetDateTime(7);
                docente.FotoPerfil = conexion.reader.GetString(8);
                docente.Cv = conexion.reader.GetString(9);
                docente.FechaAlta = conexion.reader.GetDateTime(10);
                docente.Estado = conexion.reader.GetBoolean(12);
            }
            conexion.closeReader();
            conexion.close();
            return docente;
        }

        public Boolean verificarDni(int dni)
        {
            Boolean existe = false;
            Docente docente = new Docente();
            ConexionNpgsql conexion = new ConexionNpgsql();
            string query = "select * from docentes where estado='true' and dni='" + dni + "';";
            conexion.setQuery(query);
            conexion.ejecutarReader();
            if (conexion.reader.Read())
            {
                existe = true;
            }
            conexion.closeReader();
            conexion.close();
            return existe;
        }

        public void update(Docente obj)
        {
            ConexionNpgsql conexion = new ConexionNpgsql();
            string query = "update docentes set apellido='"+obj.Apellido.ToLower()+"', nombre='"+obj.Nombre.ToLower()+"', curriculum='"+obj.Cv+"',"+
                            "direccion = '"+obj.Direccion+"', email = '"+obj.Email+"',telefono = '"+obj.Telefono+"',"+
						    "fechanacimiento = '"+obj.FechaNacimiento+"', fotoperfil = '"+obj.FotoPerfil+"',"+
						    "tipodni = '"+obj.Tipo+"' where dni = '"+obj.Dni+"'; ";
            
            conexion.setQuery(query);
            conexion.guardar();
            conexion.close();
        }
        
        public List<Docente>readByNameAndLastName(string buscar)
        {
            List<Docente> lista = new List<Docente>();
            ConexionNpgsql conexion = new ConexionNpgsql();
            string query = "select * from docentes where nombre like '%"+ buscar + "%' or apellido like '%" + buscar + "%';";
            conexion.setQuery(query);
            conexion.ejecutarReader();
            while (conexion.reader.Read())
            {
                Docente aux = new Docente();
                aux.Dni = Int32.Parse(conexion.reader.GetString(0));
                aux.Tipo = conexion.reader.GetString(1);
                aux.Nombre = conexion.reader.GetString(2);
                aux.Apellido = conexion.reader.GetString(3);
                aux.Email = conexion.reader.GetString(4);
                aux.Telefono = conexion.reader.GetString(5);
                aux.Direccion = conexion.reader.GetString(6);
                aux.FechaNacimiento = conexion.reader.GetDateTime(7);
                aux.FotoPerfil = conexion.reader.GetString(8);
                aux.Cv = conexion.reader.GetString(9);
                aux.FechaAlta = conexion.reader.GetDateTime(10);
                aux.Estado = conexion.reader.GetBoolean(12);
                lista.Add(aux);
            }
            conexion.closeReader();
            conexion.close();
            return lista;
        }
    }
}
