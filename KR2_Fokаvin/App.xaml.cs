using KR2_Fokаvin.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using System.Windows;

namespace KR2_Fokаvin
{
    /// <summary>
    /// Логика взаимодействия для App.xaml
    /// </summary>
    public partial class App : Application
    {
        public static KR2_FokavinEntities DB = new KR2_FokavinEntities();
        public static Sotrudniki LoggedSotrudniki;
    }
}
