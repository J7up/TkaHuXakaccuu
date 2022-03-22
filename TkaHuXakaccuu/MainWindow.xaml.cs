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
using TkaHuXakaccuu.Pages;

namespace TkaHuXakaccuu
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        { 
            InitializeComponent();
            MainFrame.Navigate(new ClothPage());
        }


        private void BtnFurniture_Click(object sender, RoutedEventArgs e)
        {

        }

        private void BtnServices_Click(object sender, RoutedEventArgs e)
        {

        }

        private void BtnCloth_Click(object sender, RoutedEventArgs e)
        {
            MainFrame.Navigate(new ClothPage());
        }
    }
}
