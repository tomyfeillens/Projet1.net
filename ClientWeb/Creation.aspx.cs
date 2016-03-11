using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClientWeb
{
    public partial class Creation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void valider_onClick(object sender, EventArgs e)
        {
            double number;
            int number2;
            using (ServiceAgence.AgenceClient client = new ServiceAgence.AgenceClient())
            {
                ServiceAgence.BienImmobilier bien2 = new ServiceAgence.BienImmobilier();

                //Recupération des textboxs
                bien2.Titre = tb_Nom.Text;
                if (tb_Prix.Text != "" && (Double.TryParse(tb_Prix.Text, out number)))
                    bien2.Prix = Convert.ToDouble(tb_Prix.Text);
                bien2.Adresse = tb_Adresse.Text;
                bien2.Ville = tb_Ville.Text;
                bien2.CodePostal = tb_Cp.Text;
                bien2.Description = tb_Desc.Text;
                bien2.TypeBien = (ServiceAgence.BienImmobilier.eTypeBien)Convert.ToInt32(dl_TypeBien.SelectedValue);
                bien2.EnergieChauffage = (ServiceAgence.BienImmobilierBase.eEnergieChauffage)Convert.ToInt32(dl_Energie.SelectedValue);
                bien2.TypeChauffage = (ServiceAgence.BienImmobilierBase.eTypeChauffage)Convert.ToInt32(dl_Chauffage.SelectedValue);
                if (tb_Charges.Text != "" && (Double.TryParse(tb_Charges.Text, out number)))
                    bien2.MontantCharges = Convert.ToInt32(tb_Charges.Text);
                if (tb_nbEtages.Text != "" && (int.TryParse(tb_nbEtages.Text, out number2)))
                    bien2.NbEtages = Convert.ToInt32(tb_nbEtages.Text);
                if (tb_nbPieces.Text != "" && (int.TryParse(tb_nbPieces.Text, out number2)))
                    bien2.NbPieces = Convert.ToInt32(tb_nbPieces.Text);
                if (tb_numEtage.Text != "" && (int.TryParse(tb_numEtage.Text, out number2)))
                    bien2.NumEtage = Convert.ToInt32(tb_numEtage.Text);
                if (tb_Surface.Text != "" && (Double.TryParse(tb_Surface.Text, out number)))
                    bien2.Surface = Convert.ToInt32(tb_Surface.Text);
                bien2.TypeTransaction = (ServiceAgence.BienImmobilierBase.eTypeTransaction)Convert.ToInt32(dl_TypeTrans.SelectedValue);
                bien2.DateMiseEnTransaction = DateTime.Today;


                string image;
                List<string> images = new List<string>();

                if (Fileup.HasFile)
                {
                    System.IO.Stream fs = Fileup.PostedFile.InputStream;
                    System.IO.BinaryReader br = new System.IO.BinaryReader(fs);
                    Byte[] bytes = br.ReadBytes((Int32)fs.Length);
                    image = Convert.ToBase64String(bytes, 0, bytes.Length);
                    images.Add(image);
                    bien2.PhotoPrincipaleBase64 = image;
                    bien2.PhotosBase64 = images;
                    bien2.PhotoPrincipaleBase64 = image;

                }
                
                client.AjouterBienImmobilier(bien2);
                Server.Transfer("Creation_v.aspx", true);
            }
        }
    }
}