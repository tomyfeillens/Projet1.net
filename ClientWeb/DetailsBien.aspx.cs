using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClientWeb
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            using (ServiceAgence.AgenceClient client = new ServiceAgence.AgenceClient())
            {
                ServiceAgence.ResultatBienImmobilier bien = new ServiceAgence.ResultatBienImmobilier();
                bien = client.LireDetailsBienImmobilier(id);
                string titre = bien.Bien.Titre;
                string prix = Convert.ToString(bien.Bien.Prix);
                string adresse = bien.Bien.Adresse;
                string cp = bien.Bien.CodePostal;
                string date = Convert.ToString(bien.Bien.DateMiseEnTransaction);
                string desc = bien.Bien.Description;
                string energie = Convert.ToString(bien.Bien.EnergieChauffage);
                string charges = Convert.ToString(bien.Bien.MontantCharges);
                string nbEtages = Convert.ToString(bien.Bien.NbEtages);
                string nbPieces = Convert.ToString(bien.Bien.NbPieces);
                string numEtage = Convert.ToString(bien.Bien.NumEtage);
                string photoPrinc = bien.Bien.PhotoPrincipaleBase64;
                List<string> photo = bien.Bien.PhotosBase64;
                string surface = Convert.ToString(bien.Bien.Surface);
                string typeBien = Convert.ToString(bien.Bien.TypeBien);
                string chauffage = Convert.ToString(bien.Bien.TypeChauffage);
                string typeTrans = Convert.ToString(bien.Bien.TypeTransaction);
                string ville = bien.Bien.Ville;

                lb_Nom.Text = titre;
                lb_Prix.Text = prix;
                lb_Adresse.Text = adresse;
                lb_Ville.Text = ville;
                lb_Cp.Text = cp;
                lb_Date.Text = date;
                lb_Desc.Text = desc;
                lb_TypeBien.Text = typeBien;
                lb_Energie.Text = energie;
                lb_Chauffage.Text = chauffage;
                lb_Charges.Text = charges;
                lb_nbEtages.Text = nbEtages;
                lb_nbPieces.Text = nbPieces;
                lb_numEtage.Text = numEtage;
                lb_Surface.Text = surface;
                lb_TypeTrans.Text = typeTrans;
                this.Image1.ImageUrl = "data:img/png;base64," + photoPrinc;
            }
        }
    }
}