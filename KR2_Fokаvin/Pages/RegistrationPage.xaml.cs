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
    /// Логика взаимодействия для RegistrationPage.xaml
    /// </summary>
    public partial class RegistrationPage : Page
    {
        Sotrudniki contextSotrudniki;
        public RegistrationPage()
        {
            InitializeComponent();
            CBPost.ItemsSource = App.DB.Post.ToList();
            contextSotrudniki = new Sotrudniki();
            DataContext = contextSotrudniki;
        }

        private void BRegistration_Click(object sender, RoutedEventArgs e)
        {
            App.DB.Sotrudniki.Add(contextSotrudniki);
            App.DB.SaveChanges();
            NavigationService.GoBack();
        }

        private void BBack_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }
    }
}
