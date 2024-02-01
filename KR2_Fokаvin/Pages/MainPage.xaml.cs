using KR2_Fokаvin.Models;
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

namespace KR2_Fokаvin.Pages
{
    /// <summary>
    /// Логика взаимодействия для MainPage.xaml
    /// </summary>
    public partial class MainPage : Page
    {
        public MainPage()
        {
            InitializeComponent();
        }

        private void BAccounts_Click(object sender, RoutedEventArgs e)
        {

        }

        private void BHelp_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("СИСАДМИН ПОМОГИ МНЕ!!!!!!!");
        }

        private void BZadachi_Click(object sender, RoutedEventArgs e)
        {
            
        }
    }
}
