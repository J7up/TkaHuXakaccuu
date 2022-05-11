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
            MainFrame.Navigate(new AuthPage());
            BtnCloth.Visibility = Visibility.Collapsed;
            BtnFurniture.Visibility = Visibility.Collapsed;
            BtnServices.Visibility = Visibility.Collapsed;
            BtnClients.Visibility = Visibility.Collapsed;
            BtnOrder.Visibility = Visibility.Collapsed; 
            TxtHead.Text = "Авторизация";
        }


        public void BtnFurniture_Click(object sender, RoutedEventArgs e)
        {
            MainFrame.Navigate(new FurniturePage());
            TxtHead.Text = "Фурнитуры";

        }

        private void BtnServices_Click(object sender, RoutedEventArgs e)
        {
            MainFrame.Navigate(new ServicePage());
            TxtHead.Text = "Услуги";
        }

        private void BtnCloth_Click(object sender, RoutedEventArgs e)
        {
            MainFrame.Navigate(new ClothPage());
            TxtHead.Text = "Ткани";
        }

        private void BtnClients_Click(object sender, RoutedEventArgs e)
        {
            MainFrame.Navigate(new ClientPage());
            TxtHead.Text = "Клиенты";
        }

        private void BtnOrder_Click(object sender, RoutedEventArgs e)
        {

        }

        private void BtnBack_Click(object sender, RoutedEventArgs e)
        {
            BtnCloth.Visibility = Visibility.Collapsed;
            BtnFurniture.Visibility = Visibility.Collapsed;
            BtnServices.Visibility = Visibility.Collapsed;
            BtnClients.Visibility = Visibility.Collapsed;
            BtnOrder.Visibility = Visibility.Collapsed;
            MainFrame.Navigate(new AuthPage());
            TxtHead.Text = "Авторизация";
        }
    }
}
