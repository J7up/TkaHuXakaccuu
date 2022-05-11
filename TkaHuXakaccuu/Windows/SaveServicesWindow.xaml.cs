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
using System.Windows.Shapes;

namespace TkaHuXakaccuu.Windows
{
    /// <summary>
    /// Логика взаимодействия для SaveServicesWindow.xaml
    /// </summary>
    public partial class SaveServicesWindow : Window
    {
        ТканиХакасииEntities3 context;
        public SaveServicesWindow(ТканиХакасииEntities3 context1, Услуги serv)
        {
            InitializeComponent();
            this.context = context1;
            this.DataContext = serv;
        }

        private void BtnSave_Click(object sender, RoutedEventArgs e)
        {
            context.SaveChanges();
            this.Close();
        }
    }
}
