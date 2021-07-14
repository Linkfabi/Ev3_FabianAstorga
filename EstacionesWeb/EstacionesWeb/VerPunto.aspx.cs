using EstacionesDAL.DAL;
using EstacionesDAL.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EstacionesWeb
{
    public partial class VerPunto : System.Web.UI.Page
    {
        PuntoDAL punDAL = new PuntoDAL();

        private void CargarTabla(List<Punto> puntos)
        {
            PuntoGrid.DataSource = puntos;
            PuntoGrid.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarTabla(punDAL.GetAll());
            }

        }

        protected void puntoGrid_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "eliminar")
            {
                string id = e.CommandArgument.ToString();
                punDAL.Remove(Int32.Parse(id));
                CargarTabla(punDAL.GetAll());
            }

            if (e.CommandName == "actualizar")
            {
                string id = e.CommandArgument.ToString();

                //PuntoGrid.SetEditRow(0);

                //ver como actualizar sin salir o probar como mandar un dato a la otra pagina
               
                //CargarTabla(punDAL.GetAll());
            }

        }

        protected void select_SelectedIndexChanged(object sender, EventArgs e)
        {            
            string tiposelect = nivelDdl.SelectedValue;

            if(tiposelect == "1")
            {
                CargarTabla(punDAL.GetAll());
            }
            else
            {
                List<Punto> filtrada = punDAL.GetAll(tiposelect);
                CargarTabla(filtrada);
            }
            
        }
    }
}