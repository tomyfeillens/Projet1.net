using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClientWeb
{
    public partial class Modifier : System.Web.UI.Page
    {
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["id"];
            using (ServiceAgence.AgenceClient client = new ServiceAgence.AgenceClient())
            {

                //Affichage actuel
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
                lb_Nom2.Text = titre;
                lb_Prix.Text = prix;
                lb_Adresse.Text = adresse;
                lb_Ville.Text = ville;
                lb_Cp.Text = cp;
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
                //this.Image1.ImageUrl = "data:img/png;base64," + photoPrinc;

            }
        }

        protected void modifier_onClick(object sender, EventArgs e)
        {
            using (ServiceAgence.AgenceClient client = new ServiceAgence.AgenceClient())
            {
                double number;
                int number2;
                //Traitement modification
                ServiceAgence.BienImmobilier bien2 = null;
                bien2 = client.LireDetailsBienImmobilier(id).Bien;

                if (tb_Nom.Text !="")
                    bien2.Titre = tb_Nom.Text;
                if (tb_Prix.Text != "" && (Double.TryParse(tb_Prix.Text, out number)))
                    bien2.Prix = Convert.ToDouble(tb_Prix.Text);
                if (tb_Adresse.Text != "")
                    bien2.Adresse = tb_Adresse.Text;
                if (tb_Ville.Text != "")
                    bien2.Ville = tb_Ville.Text;
                if (tb_Cp.Text != "")
                    bien2.CodePostal = tb_Cp.Text;
                if (tb_Desc.Text != "")
                    bien2.Titre = tb_Desc.Text;
                if (dl_TypeBien.SelectedValue!= "null")
                    bien2.TypeBien = (ServiceAgence.BienImmobilier.eTypeBien)Convert.ToInt32(dl_TypeBien.SelectedValue);
                if (dl_Energie.Text != "null")
                    bien2.EnergieChauffage = (ServiceAgence.BienImmobilierBase.eEnergieChauffage)Convert.ToInt32(dl_Energie.SelectedValue);
                if (dl_Chauffage.Text != "null")
                    bien2.TypeChauffage = (ServiceAgence.BienImmobilierBase.eTypeChauffage)Convert.ToInt32(dl_Chauffage.SelectedValue);
                if (tb_Charges.Text != "" && (Double.TryParse(tb_Charges.Text, out number)) )
                    bien2.MontantCharges = Convert.ToInt32(tb_Charges.Text);
                if (tb_nbEtages.Text != "" && (int.TryParse(tb_nbEtages.Text, out number2)) )
                    bien2.NbEtages = Convert.ToInt32(tb_nbEtages.Text);
                if (tb_nbPieces.Text != "" && (int.TryParse(tb_nbPieces.Text, out number2)) )
                    bien2.NbPieces = Convert.ToInt32(tb_nbPieces.Text);
                if (tb_numEtage.Text != "" && (int.TryParse(tb_numEtage.Text, out number2)) )
                    bien2.NumEtage = Convert.ToInt32(tb_numEtage.Text);
                if (tb_Surface.Text != "" && (Double.TryParse(tb_Surface.Text, out number)) )
                    bien2.Surface = Convert.ToInt32(tb_Surface.Text);
                if (dl_TypeTrans.SelectedValue != "null")
                    bien2.TypeTransaction = (ServiceAgence.BienImmobilierBase.eTypeTransaction)Convert.ToInt32(dl_TypeTrans.SelectedValue);


                string image;
                List<string> images = new List<string>();

                if (Fileup.HasFile)
                {
                    System.IO.Stream fs = Fileup.PostedFile.InputStream;
                    System.IO.BinaryReader br = new System.IO.BinaryReader(fs);
                    Byte[] bytes = br.ReadBytes((Int32)fs.Length);
                    image = Convert.ToBase64String(bytes, 0, bytes.Length);
                    images.Add(image);
                    bien2.PhotosBase64 = images;
                    bien2.PhotoPrincipaleBase64 = image;

                }

                client.ModifierBienImmobilier(bien2);
                Server.Transfer("Modification_v.aspx", true);
            }
        }
    }
}