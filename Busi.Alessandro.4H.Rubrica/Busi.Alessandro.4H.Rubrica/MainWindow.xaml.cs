using Busi.Alessandro._4H.Rubrica.models;
using System;
using System.Collections.Generic;
using System.IO;
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

namespace Busi.Alessandro._4H.Rubrica
{
    /// <summary>
    /// Logica di interazione per MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        Persona[] persone = new Persona[20];
        int idx = 0;
        public MainWindow()
        {
            InitializeComponent();
            for (int i = 0; i < persone.Length; i++)
            {
                persone[i] = new Persona();
            }
            scrittura();
            lettura();
            dgDati.ItemsSource = persone;
        }

        //scrittura nel file di testo creato
        void scrittura()
        {

            StreamWriter fOut = new StreamWriter("Dati.txt");
            for (int i = 0; i < persone.Length; i++)
            {
                fOut.WriteLine(persone[i].ToString());
            }
            fOut.Close();

        }


        //lettura nel file di testo creato
        int lettura()
        {
            int i = 0;
            idx = 0;
            StreamReader fIn = new StreamReader("Dati.txt");

            while (i < persone.Length && persone[i].Nome != "")
            {
                string riga = fIn.ReadLine();
                persone[i] = new Persona(riga);
                idx++;
                i++;
            }
            fIn.Close();
            return idx;
        }

        //funzione per aggiungere le città all'elenco
        private void Btn_Click_add(object sender, RoutedEventArgs e)
        {
            int idx = 0;
            idx = lettura();
            // Controllo di non aver raggiunto il limite massimo
            if (idx < persone.Length)
            {

                // Creo la citta
                FinestraContatto finestra = new FinestraContatto();
                finestra.ShowDialog();
                Persona nuovo = new Persona();
                if (finestra.exit)
                {
                    try
                    {
                        // Aggiungo la citta all'array e aggiorno l'indice
                        persone[idx] = new Persona($"{finestra.nome.Text};{finestra.cognome.Text};{finestra.citta.Text};{finestra.cap.Text};{finestra.ntelefono.Text};{finestra.datanascita.Text}");
                        idx++;
                        persone[idx] = nuovo;
                        scrittura();
                    }
                    catch (Exception err)
                    {
                        MessageBox.Show(err.Message);
                    }


                }

            }
            else
                MessageBox.Show($"Numero massimo di contatti inseribili ({persone.Length}) ");

            // Collego il mio array al DataGrid 

            dgDati.ItemsSource = persone;
            dgDati.Items.Refresh();
        }
    }
}
