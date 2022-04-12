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

namespace TkaHuXakaccuu.Pages
{
    /// <summary>
    /// Логика взаимодействия для FurniturePage.xaml
    /// </summary>
    public partial class FurniturePage : Page
    {
        ТканиХакасииEntities1 context;
        public FurniturePage()
        {
            InitializeComponent();
            context = new ТканиХакасииEntities1();
            FilterCmb.ItemsSource = context.ВидыФурнитур.ToList();
            DataGridFurniture.ItemsSource = context.Фурнитура.ToList();
            
        }

        private void BtnAdd_Click(object sender, RoutedEventArgs e)
        {

        }

        private void BtnDel_Click(object sender, RoutedEventArgs e)
        {

        }

        private void SearchTB_TextChanged(object sender, TextChangedEventArgs e)
        {

        }

        private void FilterCmb_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }

        private void BtnEdit_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}
