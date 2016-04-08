using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Collections.ObjectModel;
using ClientWPF.ServiceAgence;

namespace ClientWPF
{
    /// <summary>
    /// Logique d'interaction pour MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window, INotifyPropertyChanged
    {
        #region INotify
        private Dictionary<string, object> _propertyValue = new Dictionary<string, object>();

        public event PropertyChangedEventHandler PropertyChanged;

        private object GetProperty([CallerMemberName] string propertyName = null) // Caller.. remplace que si propertyNme est null
        {
            if (_propertyValue.ContainsKey(propertyName)) //Hashtable contient propertyName ?
                return _propertyValue[propertyName];
            return null;
        }

        private bool SetProperty<T>(T newValue, [CallerMemberName] string propertyName = null)
        {
            T current = (T)GetProperty(propertyName);

            if (!EqualityComparer<T>.Default.Equals(current, newValue))
            {
                _propertyValue[propertyName] = newValue;
                if (PropertyChanged != null)
                {
                    PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
                }
                return true;
            }
            return false;
        }
        #endregion

        #region Attribut

        private ServiceAgence.ListeBiensImmobiliers _listeBiens;
        private ResultatBienImmobilier _bien;

        #endregion

        string id = "";

        #region Propriété

        public ServiceAgence.ListeBiensImmobiliers ListeBiens
        {
            get
            {
                if (_listeBiens == null) _listeBiens = new ServiceAgence.ListeBiensImmobiliers();
                return _listeBiens;
            }
            set
            {
                this._listeBiens = value;
                SetProperty(value);
            }
        }
        public ResultatBienImmobilier Bien
        {
            get { return (ResultatBienImmobilier)GetProperty(); }
            set
            {
                this._bien = value;
                SetProperty(value);
            }
        }

        #endregion


        public BienImmobilierBase TexteSelectionne
        {
            get
            {
                return (BienImmobilierBase)GetProperty();
            }
            set
            {
                SetProperty(value);
                if (value != null)
                {
                    id = Convert.ToString(value.Id);

                    using (ServiceAgence.AgenceClient client = new ServiceAgence.AgenceClient())
                    {
                        Bien = client.LireDetailsBienImmobilier(id);


                    }
                }
            }
        }


        public MainWindow()
        {
            this.DataContext = this;
            using (ServiceAgence.AgenceClient client = new ServiceAgence.AgenceClient())
            {
                #region critères
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
                #endregion

                ServiceAgence.ResultatListeBiensImmobiliers resultat = client.LireListeBiensImmobiliers(criteres, null, null);

                if (resultat.SuccesExecution)
                {
                    ListeBiens = resultat.Liste;
                }
                else
                {
                    ListeBiens = new ServiceAgence.ListeBiensImmobiliers();
                }
            }

        }


        private void Window_Loaded(object sender, RoutedEventArgs e)
        {

        }

        private void Ajouter_Click(object sender, RoutedEventArgs e)
        {
            Ajouter w = new Ajouter();
            w.ShowDialog();
        }

        private void Modifier_Click(object sender, RoutedEventArgs e)
        {
            Modifier w = new Modifier(id);
            w.ShowDialog();
        }

        private void Supprimer_Click(object sender, RoutedEventArgs e)
        {
            using (ServiceAgence.AgenceClient client = new ServiceAgence.AgenceClient())
            {
                client.SupprimerBienImmobilier(id);
            }
        }
        private void Simple_Click(object sender, RoutedEventArgs e)
        {
            Simple w = new Simple();
            w.ShowDialog();

            using (ServiceAgence.AgenceClient client = new ServiceAgence.AgenceClient())
            {
                #region critères bases
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
                #endregion
                if (w.val == true)
                    w.val = false;
                {
                    criteres.TitreContient = w.name;
                    criteres.Ville = w.ville;
                    criteres.TypeBien = w.TypeBienSelectionne;
                    criteres.TypeTransaction = w.TypeTransSelectionne;
                    if (w.prixMax !=-1) { criteres.Prix1 = 0; criteres.Prix2 = Convert.ToDouble(w.prixMax); }
                }

                ServiceAgence.ResultatListeBiensImmobiliers resultat = client.LireListeBiensImmobiliers(criteres, null, null);

                if (resultat.SuccesExecution)
                {
                    ListeBiens = resultat.Liste;
                }
                else
                {
                    ListeBiens = new ServiceAgence.ListeBiensImmobiliers();
                }
                

            }
        }

        private void Avancee_Click(object sender, RoutedEventArgs e)
        {
            Avancee w = new Avancee();
            w.ShowDialog();

            using (ServiceAgence.AgenceClient client = new ServiceAgence.AgenceClient())
            {
                #region critères bases
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
                #endregion
                if (w.val == true)
                {
                    w.val = false;
                    criteres.TitreContient = w.name;
                    criteres.TypeBien = w.TypeBienSelectionne;
                    criteres.TypeTransaction = w.TypeTransactionSelectionne;
                    criteres.AdresseContient = w.Adresse;
                    criteres.CodePostal = w.codePostal;
                    criteres.Ville = w.ville;
                    criteres.TypeChauffage= w.TypeChauffageSelectionne;
                    criteres.EnergieChauffage = w.EnergieSelectionne;
                    criteres.Prix1 = w.Prix1;
                    criteres.Prix2 = w.Prix2;
                    criteres.Surface1 = w.Surface1;
                    criteres.Surface2 = w.Surface2;
                    criteres.NbPieces1 = w.nbPieces1;
                    criteres.NbPieces2 = w.nbPieces2;
                    criteres.NumEtage1 = w.numEtage1;
                    criteres.NumEtage2 = w.numEtage2;
                    criteres.NbEtages1 = w.nbEtage1;
                    criteres.NbEtages2 = w.nbEtage2;
                    criteres.MontantCharges1 = w.montantCharges1;
                    criteres.MontantCharges2 = w.montantCharges2;
                }

                ServiceAgence.ResultatListeBiensImmobiliers resultat = client.LireListeBiensImmobiliers(criteres, null, null);

                if (resultat.SuccesExecution)
                {
                    ListeBiens = resultat.Liste;
                }
                else
                {
                    ListeBiens = new ServiceAgence.ListeBiensImmobiliers();
                }

            }
        }

        private void Raz_Click(object sender, RoutedEventArgs e)
        {
            using (ServiceAgence.AgenceClient client = new ServiceAgence.AgenceClient())
            {
                #region critères
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
                #endregion

                ServiceAgence.ResultatListeBiensImmobiliers resultat = client.LireListeBiensImmobiliers(criteres, null, null);

                if (resultat.SuccesExecution)
                {
                    ListeBiens = resultat.Liste;
                }
                else
                {
                    ListeBiens = new ServiceAgence.ListeBiensImmobiliers();
                }
            }
        }


    }

}
