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
    /// Логика взаимодействия для LoginPage.xaml
    /// </summary>
    public partial class LoginPage : Page
    {
        public LoginPage()
        {
            InitializeComponent();
        }

        private void Login_Click(object sender, RoutedEventArgs e)
        {
            string login = BLogin.Text;
            string password = BPassword.Text;

            var loggedSotrudnik = App.DB.Sotrudniki.FirstOrDefault(x => x.Login == login && x.Password == password);
            if (loggedSotrudnik == null)
            {
                MessageBox.Show("Не верный логин или пароль");
                return;
            }
            App.LoggedSotrudniki = loggedSotrudnik;
            if (loggedSotrudnik.Postid == 1)
            {
                NavigationService.Navigate(new MainPage());
                MessageBox.Show("HELLO SOTRUDNIK");
            }
            if (loggedSotrudnik.Postid == 2)
            {
                NavigationService.Navigate(new MainPage());
                MessageBox.Show("HELLO BOSS");
            }
        }

        private void Registration_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new RegistrationPage());
        }
    }
}
