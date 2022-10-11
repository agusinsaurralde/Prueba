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
    public partial class Baja_docente : System.Web.UI.Page
    {
        private NegocioDocente nd = new NegocioDocente();
        public Docente docente = new Docente();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["usuario"] == null)
                {
                    Response.Redirect("inicio.aspx");
                }
                    string qs = Request.QueryString["dni"];
                docente =nd.readByDni(Int32.Parse(qs));
                if (docente == null)
                {
                    Response.Redirect("Docentes.aspx");
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
        protected void btnConfirmar_Click(object sender, EventArgs e)
        {
            try
            {
                string razonBaja = taRazon.Value;
                nd.delete(docente.Dni,razonBaja);
                Response.Redirect("Docentes.aspx");
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}