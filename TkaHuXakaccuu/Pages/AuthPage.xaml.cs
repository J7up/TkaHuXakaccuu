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
    /// Логика взаимодействия для AuthPage.xaml
    /// </summary>
    public partial class AuthPage : Page
    {
        public AuthPage()
        {
            InitializeComponent();
        }

        private void BtnAuth_Click(object sender, RoutedEventArgs e)
        {
            MainWindow main = (MainWindow)Application.Current.MainWindow;
            if (TxtLogin.Text == "111" && TxtPass.Password =="111")
            {
                MessageBox.Show("Добро пожаловать!!!"); 
            main.BtnCloth.Visibility = Visibility.Visible;
            main.BtnFurniture.Visibility = Visibility.Visible;
            main.BtnServices.Visibility = Visibility.Visible;
            main.MainFrame.Navigate(new ClothPage());
            main.TxtHead.Text = "Ткани";
            }
            else
            {
                MessageBox.Show("Неверный логин/пароль");
            }
        }

        private void BntGuest_Click(object sender, RoutedEventArgs e)
        {
            MainWindow main = (MainWindow)Application.Current.MainWindow;
            main.BtnCloth.Visibility = Visibility.Visible;
            main.BtnFurniture.Visibility = Visibility.Visible;
            main.BtnServices.Visibility = Visibility.Visible;
            main.MainFrame.Navigate(new ClothPage());
            main.TxtHead.Text = "Ткани";
        }
    }
}
