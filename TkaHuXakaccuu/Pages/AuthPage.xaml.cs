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
        ТканиХакасииEntities3 context;
        public AuthPage()
        {
            InitializeComponent();
            MainWindow main = (MainWindow)Application.Current.MainWindow;
            main.BtnBack.Visibility = Visibility.Collapsed;
            context = new ТканиХакасииEntities3();
        }

        private void BtnAuth_Click(object sender, RoutedEventArgs e)
        {
            MainWindow main = (MainWindow)Application.Current.MainWindow;
            if (context.Клиенты.Any(u=>u.Логин==TxtLogin.Text && u.Пароль==TxtPass.Password))
            {
              if (context.Клиенты.Any(u => u.Логин == TxtLogin.Text && u.Пароль == TxtPass.Password && u.ID==1))
                {
                    MessageBox.Show("Добро пожаловать!!!");
                    main.BtnCloth.Visibility = Visibility.Visible;
                    main.BtnFurniture.Visibility = Visibility.Visible;
                    main.BtnServices.Visibility = Visibility.Visible;
                    main.BtnClients.Visibility = Visibility.Visible;
                    main.BtnOrder.Visibility = Visibility.Visible;
                    main.CmbAdminUser.SelectedIndex = 0;  
                    main.TxtHead.Text = "Ткани";
                    main.MainFrame.Navigate(new ClothPage());
                }
                else
                {
                    MessageBox.Show("Добро пожаловать!!!");
                    main.BtnCloth.Visibility = Visibility.Visible;
                    main.BtnFurniture.Visibility = Visibility.Visible;
                    main.BtnServices.Visibility = Visibility.Visible;
                    main.BtnOrder.Visibility = Visibility.Visible;   
                    main.CmbAdminUser.SelectedIndex = 1;
                    main.TxtHead.Text = "Ткани";
                    main.MainFrame.Navigate(new ClothPage());
                }
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
            main.BtnOrder.Visibility = Visibility.Visible;
            main.CmbAdminUser.SelectedIndex = 1;
            main.TxtHead.Text = "Ткани";
            main.MainFrame.Navigate(new ClothPage());
        }

        private void BtnReg_Click(object sender, RoutedEventArgs e)
        {
            var newCloth = new Клиенты();
            context.Клиенты.Add(newCloth);
            var add = new Windows.SaveClientWindow(context, newCloth);
            add.ShowDialog();
        }

        private void ShowHidePass_MouseLeave(object sender, MouseEventArgs e)
        {
            HidePassword();
        }

        private void ShowHidePass_PreviewMouseDown(object sender, MouseButtonEventArgs e)
        {
            ShowPassword();
        }

        private void ShowHidePass_PreviewMouseUp(object sender, MouseButtonEventArgs e)
        {
            HidePassword();
        }
        void ShowPassword()
        {
            TxtPassword.Visibility = Visibility.Visible;
            TxtPass.Visibility = Visibility.Hidden;
            TxtPassword.Text = TxtPass.Password;
        }
        void HidePassword()
        {
            TxtPassword.Visibility = Visibility.Hidden;
            TxtPass.Visibility = Visibility.Visible;
            TxtPass.Focus();
        }

        private void TxtPass_PasswordChanged(object sender, RoutedEventArgs e)
        {
            if (TxtPass.Password.Length > 0)
                ShowHidePass.Visibility = Visibility.Visible;
            else
                ShowHidePass.Visibility = Visibility.Hidden;
        }
    } 
}
