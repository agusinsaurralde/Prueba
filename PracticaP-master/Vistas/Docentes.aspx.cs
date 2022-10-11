using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using Negocio;

namespace Vistas
{
    public partial class Docentes : System.Web.UI.Page
    {
        public List<Docente> lista = new List<Docente>();
        public NegocioDocente negocioDocente = new NegocioDocente();
        public Docente docente = new Docente();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["usuario"] != null)
            {
                lista = negocioDocente.readAll();
                if (lista == null)
                    lista = new List<Docente>(); ;
            }
            else
            {
                Response.Redirect("inicio.aspx");
            }
        }
        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            try
            {
                string buscar = txtBuscar.Text;
                if (buscar == "" || buscar==null)
                    lista = negocioDocente.readAll();
                else
                    lista = negocioDocente.readByNameAndLastName(buscar);
                if (lista == null)
                    lista = new List<Docente>();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        
    }
}