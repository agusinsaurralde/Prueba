using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dao;
using Entidades;

namespace Negocio
{
    public class NegocioUsuario
    {
        public DaoUsuario dao = new DaoUsuario();

        public Usuario login(string usuario, string password)
        {
            return dao.login(usuario,password);
        }

    }
}
