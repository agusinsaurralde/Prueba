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
    public partial class Mostrar_Docente : System.Web.UI.Page
    {
        public Docente docente = new Docente();
        public NegocioDocente negocio = new NegocioDocente();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"] == null)
                Response.Redirect("Inicio.aspx");

            if (Request.QueryString["dni"] != null)
            {
                try
                {
                    int dni = Int32.Parse(Request.QueryString["dni"]);
                    this.docente = negocio.readByDni(dni);
                    imgPerfil.ImageUrl = docente.FotoPerfil;
                    HLcv.NavigateUrl = docente.Cv;
                    HLcv.Text = docente.Cv;

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
            else
            {
                Response.Redirect("Docentes.aspx");
            }

        }
    }
}