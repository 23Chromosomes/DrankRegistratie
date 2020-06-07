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

namespace DrankRegistratieApp
{
    /// <summary>
    /// Interaction logic for DrankControl.xaml
    /// </summary>
    public partial class DrankControl : UserControl
    {
        DataBaseDataContext db = new DataBaseDataContext();
        public dranken DRANK;
        public DrankControl()
        {
            InitializeComponent();
            DrankenDG.ItemsSource = db.drankens.ToList();
        }

        private void BackBtn_Click(object sender, RoutedEventArgs e)
        {
            (this.Parent as Panel).Children.Remove(this);
        }

        private void BtnDelete_Click(object sender, RoutedEventArgs e)
        {
            var item = (dranken)DrankenDG.SelectedItem;

            MessageBoxResult mbr = MessageBox.Show("Weet u het zeker dat u " + item.Naam + " wilt verwijderen?", "Waarschuwing!", MessageBoxButton.YesNo);

            if (MessageBoxResult.Yes == mbr)
            {
                db.drankens.DeleteOnSubmit(item);

                db.SubmitChanges();
                DrankenDG.ItemsSource = db.drankens.ToList();
            }
        }

        private void DrankenDG_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            var item = (dranken)DrankenDG.SelectedItem;
            DRANK = item;
            NaamBox.Text = item.Naam;
            SoortBox.Text = item.Soort;
            PrijsBox.Text = item.Prijs.ToString();
        }

        private void ToevoegenBtn_Click(object sender, RoutedEventArgs e)
        {
            dranken HetProduct = new dranken();
            HetProduct.Naam = NaamBox.Text;
            HetProduct.Soort = SoortBox.Text;
            HetProduct.Prijs = decimal.Parse(PrijsBox.Text);
            //Dat in de wachtrijzetten om opgeslagen te worden
            db.drankens.InsertOnSubmit(HetProduct);
            //Daadwerkelijk opslaan
            db.SubmitChanges();

            DrankenDG.ItemsSource = db.drankens.ToList();
        }

        private void BijwerkenBtn_Click(object sender, RoutedEventArgs e)
        {
            if (DRANK != null)
            {
                DRANK.Naam = NaamBox.Text;
                DRANK.Soort = SoortBox.Text;
                DRANK.Prijs = decimal.Parse(PrijsBox.Text.ToString());
                db.SubmitChanges();
            }
        }

        private void ZoekBtn_Click(object sender, RoutedEventArgs e)
        {
            string ZoekWaarde = SearchBox.Text;
            var DrankLijst = db.drankens.Where(ZVariabele => Convert.ToString(ZVariabele.Naam).Contains(ZoekWaarde));
            DrankenDG.ItemsSource = DrankLijst;
        }

        private void SearchBox_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Return)
            {
                string ZoekWaarde = SearchBox.Text;
                var DrankLijst = db.drankens.Where(ZVariabele => Convert.ToString(ZVariabele.Naam).Contains(ZoekWaarde));
                DrankenDG.ItemsSource = DrankLijst;
            }
        }
    }
}
