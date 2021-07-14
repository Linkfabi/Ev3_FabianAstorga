using EstacionesDAL.DTO;
using EstacionesDAL.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EstacionesWeb
{
    public partial class RegistrarEstaciones : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void AgregarBtn_Click(object sender, EventArgs e)
        {
            if (Validar())
            {
                errorID.InnerText = "";
                int id = Int32.Parse(idTxt.Value);
                string fecha = fechaTxt.Value;
                string direccion = direccionTxt.Value;
                string region = regionBox.Value;

                Estacion es = new Estacion(id,fecha,direccion,region);

                EstacionDAL esDAL = new EstacionDAL();
                esDAL.Add(es);

                exitoTxt.InnerText = "Estacion Registrada Exitosamente";

                Limpiar();
            }
            else
            {
                exitoTxt.InnerText = "";
                errorID.InnerText = "ID tiene que ser Mayor a 0";
            }
            
        }

        private void Limpiar()
        {
            idTxt.Value = "";
            fechaTxt.Value = "";
            direccionTxt.Value = "";
            regionBox.SelectedIndex = 0;
        }

        private Boolean Validar()
        {
            int id =Int32.Parse(idTxt.Value);

            if (id >= 0)
            {
                return true;
            }
            else
            {
                return false;
            }

        }


    }
}