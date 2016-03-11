using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClientWeb
{
    public partial class Default : System.Web.UI.Page
    {
        public List<ServiceAgence.BienImmobilierBase> liste = null;

        protected void Page_Load(object sender, EventArgs e)
        {

            using (ServiceAgence.AgenceClient client = new ServiceAgence.AgenceClient())
            {
                ServiceAgence.CriteresRechercheBiensImmobiliers criteres = new ServiceAgence.CriteresRechercheBiensImmobiliers();
                criteres.DateMiseEnTransaction1 = null;
                criteres.DateMiseEnTransaction2 = null;
                criteres.DateTransaction1 = null;
                criteres.DateTransaction2 = null;
                criteres.EnergieChauffage = null;
                criteres.MontantCharges1 = -1;
                criteres.MontantCharges2 = -1;
                criteres.NbEtages1 = -1;
                criteres.NbEtages2 = -1;
                criteres.NbPieces1 = -1;
                criteres.NbPieces2 = -1;
                criteres.NumEtage1 = -1;
                criteres.NumEtage2 = -1;
                criteres.Prix1 = -1;
                criteres.Prix2 = -1;
                criteres.Surface1 = -1;
                criteres.Surface2 = -1;
                criteres.TransactionEffectuee = null;
                criteres.TypeBien = null;
                criteres.TypeChauffage = null;
                criteres.TypeTransaction = null;

                ServiceAgence.ResultatListeBiensImmobiliers resultat = client.LireListeBiensImmobiliers(criteres, null, null);

                if (resultat.SuccesExecution)
                {
                    liste = resultat.Liste.List;
                }
                else
                {
                    liste = new List<ServiceAgence.BienImmobilierBase>();
                    //this.lblErreurs.Text = resultat.ErreursBloquantes.ToString();
                }
            }


            this.rpResultats.DataSource = liste;
            this.rpResultats.DataBind();

        }

        protected void rechercher_Click(object sender, EventArgs e)
        {
            using (ServiceAgence.AgenceClient client = new ServiceAgence.AgenceClient())
            {
                ServiceAgence.CriteresRechercheBiensImmobiliers criteres = new ServiceAgence.CriteresRechercheBiensImmobiliers();
                criteres.DateMiseEnTransaction1 = null;
                criteres.DateMiseEnTransaction2 = null;
                criteres.DateTransaction1 = null;
                criteres.DateTransaction2 = null;

                criteres.TitreContient = this.tbRech.Text;
                criteres.CodePostal = this.tbCp.Text;
                criteres.Ville = this.tbVille.Text;
                criteres.EnergieChauffage = null;
                criteres.MontantCharges1 = -1;
                criteres.MontantCharges2 = -1;
                criteres.NbEtages1 = -1;
                criteres.NbEtages2 = -1;
                criteres.NbPieces1 = (this.dlNbPieces.SelectedValue == "-1") ? -1 : Convert.ToInt32(this.dlNbPieces.Text);
                criteres.NbPieces2 = (this.dlNbPieces.SelectedValue == "-1") ? -1 : Convert.ToInt32(this.dlNbPieces.Text);
                criteres.NumEtage1 = -1;
                criteres.NumEtage2 = -1;
                criteres.Prix1 = 1;
                if ((this.dlPrixMax.SelectedValue == "-1"))
                {
                    criteres.Prix1 = -1;
                    criteres.Prix2 = -1;
                }
                else
                    criteres.Prix2 = Convert.ToInt32(this.dlPrixMax.Text);
                criteres.Surface1 = -1;
                criteres.Surface2 = -1;
                criteres.TransactionEffectuee = null;
                if (this.dlTypeBien.SelectedValue == "null")
                    criteres.TypeBien = null;
                else
                    criteres.TypeBien = (ServiceAgence.BienImmobilierBase.eTypeBien)Convert.ToInt32( dlTypeBien.SelectedValue);
                criteres.TypeChauffage = null;
                criteres.TypeTransaction = null;
                

                ServiceAgence.ResultatListeBiensImmobiliers resultat = client.LireListeBiensImmobiliers(criteres, null, null);

                if (resultat.SuccesExecution)
                {
                    liste = resultat.Liste.List;
                }
                else
                {
                    liste = new List<ServiceAgence.BienImmobilierBase>();
                    //this.lblErreurs.Text = resultat.ErreursBloquantes.ToString();
                }
                
            }


            this.rpResultats.DataSource = liste;
            this.rpResultats.DataBind();
        }

        protected void rechAv_Click(object sender, EventArgs e)
        {
            using (ServiceAgence.AgenceClient client = new ServiceAgence.AgenceClient())
            {
                ServiceAgence.CriteresRechercheBiensImmobiliers criteres = new ServiceAgence.CriteresRechercheBiensImmobiliers();

                criteres.TitreContient = this.tbRechAv.Text;
                criteres.CodePostal = this.tbCpAv.Text;
                criteres.Ville = this.tbVilleAv.Text;

                //type Trans
                if (this.dlTypeTransAv.SelectedValue == "null")
                {
                    criteres.TypeTransaction = null;
                }
                else 
                    criteres.TypeTransaction= (ServiceAgence.BienImmobilierBase.eTypeTransaction)Convert.ToInt32(dlTypeTransAv.SelectedValue);  
                //type bien   
                if (this.dlTypeBienAv.SelectedValue == "null")
                    criteres.TypeBien = null;
                else
                    criteres.TypeBien = (ServiceAgence.BienImmobilierBase.eTypeBien)Convert.ToInt32(dlTypeBienAv.SelectedValue);
                //type chauff
                if (this.dlTypeChauffAv.SelectedValue == "null")
                    criteres.TypeChauffage = null;
                else
                    criteres.TypeChauffage = (ServiceAgence.BienImmobilierBase.eTypeChauffage)Convert.ToInt32(dlTypeChauffAv.SelectedValue);
                //type ener
                if (this.dlTypeEnerAv.SelectedValue == "null")
                    criteres.EnergieChauffage = null;
                else
                    criteres.EnergieChauffage = (ServiceAgence.BienImmobilierBase.eEnergieChauffage)Convert.ToInt32(dlTypeEnerAv.SelectedValue);
                
                //Prix 
                double number;
                bool result1 = Double.TryParse(tbPrixMinAv.Text, out number);
                bool result2 = Double.TryParse(tbPrixMaxAv.Text, out number);
                if(tbPrixMinAv.Text=="")
                    criteres.Prix1 = -1;
                if (tbPrixMaxAv.Text == "")
                    criteres.Prix2 = -1;
                if ( (result1 && result2) && ( Convert.ToDouble(tbPrixMinAv.Text)< Convert.ToDouble(tbPrixMaxAv.Text) ) )
                {
                    criteres.Prix1 = Convert.ToDouble(tbPrixMinAv.Text);
                    criteres.Prix2 = Convert.ToDouble(tbPrixMaxAv.Text);
                }

                //Surface
                result1 = Double.TryParse(tbSurfMinAv.Text, out number);
                result2 = Double.TryParse(tbSurfMaxAv.Text, out number);
                if (tbSurfMinAv.Text == "")
                    criteres.Surface1 = -1;
                if (tbSurfMaxAv.Text == "")
                    criteres.Surface2 = -1;
                if ((result1 && result2) && (Convert.ToDouble(tbSurfMinAv.Text) < Convert.ToDouble(tbSurfMaxAv.Text)))
                {
                    criteres.Surface1  = Convert.ToDouble(tbSurfMinAv.Text);
                    criteres.Surface2 = Convert.ToDouble(tbSurfMaxAv.Text);
                }

                //Montant charges
                result1 = Double.TryParse(tbMontMinAv.Text, out number);
                result2 = Double.TryParse(tbMontMaxAv.Text, out number);
                if(tbMontMinAv.Text == "")
                    criteres.MontantCharges1 = -1;
                if (tbMontMaxAv.Text == "")
                    criteres.MontantCharges2 = -1;
                if ((result1 && result2) && (Convert.ToDouble(tbMontMinAv.Text) < Convert.ToDouble(tbMontMaxAv.Text)))
                {
                    criteres.MontantCharges1 = Convert.ToDouble(tbMontMinAv.Text);
                    criteres.MontantCharges2 = Convert.ToDouble(tbMontMaxAv.Text);
                }

                //Nombre étages
                if (dlNbEtagesMin.SelectedValue == "-1")
                    criteres.NbEtages1 = 0;
                else
                    criteres.NbEtages1 = Convert.ToInt32(dlNbEtagesMin.Text);
                if (dlNbEtagesMax.SelectedValue == "-1" || dlNbEtagesMax.SelectedValue=="max")
                    criteres.NbEtages2 = 2000000;
                else
                    criteres.NbEtages2 = Convert.ToInt32(dlNbEtagesMax.Text);

                //Numéro étage
                if (dlNumEtageMin.SelectedValue == "null")
                    criteres.NumEtage1 = 0;
                else
                    criteres.NumEtage1 = Convert.ToInt32(dlNumEtageMin.Text);
                if (dlNumEtageMax.SelectedValue == "null" || dlNumEtageMax.SelectedValue =="max")
                    criteres.NumEtage2 = 2000000;
                else
                    criteres.NumEtage2 = Convert.ToInt32(dlNumEtageMax.Text);

                //Nombre de Pièces
                if (dlNbPiecesMinAv.SelectedValue == "-1")
                    criteres.NbPieces1 = 0;
                else
                    criteres.NbPieces1 = Convert.ToInt32(dlNbPiecesMinAv.Text);
                if (dlNbPiecesMaxAv.SelectedValue == "-1" || dlNbPiecesMaxAv.SelectedValue =="max")
                    criteres.NbPieces2 = 2000000;
                else
                    criteres.NbPieces2 = Convert.ToInt32(dlNbPiecesMaxAv.Text);



                criteres.TransactionEffectuee = null;
                criteres.DateMiseEnTransaction1 = null;
                criteres.DateMiseEnTransaction2 = null;
                criteres.DateTransaction1 = null;
                criteres.DateTransaction2 = null;
                ServiceAgence.ResultatListeBiensImmobiliers resultat = client.LireListeBiensImmobiliers(criteres, null, null);

                if (resultat.SuccesExecution)
                {
                    liste = resultat.Liste.List;
                }
                else
                {
                    liste = new List<ServiceAgence.BienImmobilierBase>();
                    //this.lblErreurs.Text = resultat.ErreursBloquantes.ToString();
                }

            }


            this.rpResultats.DataSource = liste;
            this.rpResultats.DataBind();
        }

     


        /*public void LoadDropDownListItems<T>(DropDownList ddl ) 
        {
            ddl.Items.Clear();
            foreach(int value in Enum.GetValues(typeof(T)))
            {
                ddl.Items.Add()
            }

        }*/


    }
}