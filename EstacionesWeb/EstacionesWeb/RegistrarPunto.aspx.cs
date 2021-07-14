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
    public partial class RegistrarPunto : System.Web.UI.Page
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
                string punto = puntotxt.Value;
                string direccion = direccionTxt.Value;
                string region = regionBox.Value;

                Punto p = new Punto(id, punto, direccion, region);

                PuntoDAL punDAL = new PuntoDAL();
                punDAL.Add(p);

                exitoTxt.InnerText = "Punto Registrado Exitosamente";

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
            puntotxt.Value = "";
            direccionTxt.Value = "";
            regionBox.SelectedIndex = 0;
        }

        private Boolean Validar()
        {
            int id = Int32.Parse(idTxt.Value);

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