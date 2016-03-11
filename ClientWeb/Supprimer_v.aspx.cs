using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClientWeb
{
    public partial class Supprimer_v : System.Web.UI.Page
    {
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["id"];
            using (ServiceAgence.AgenceClient client = new ServiceAgence.AgenceClient())
            {
                client.SupprimerBienImmobilier(id);
            }
        }

    }
}