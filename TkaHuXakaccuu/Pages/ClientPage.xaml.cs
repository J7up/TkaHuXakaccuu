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
    /// Логика взаимодействия для ClientPage.xaml
    /// </summary>
    public partial class ClientPage : Page
    {
        ТканиХакасииEntities3 context;
        public ClientPage()
        {
            InitializeComponent();
            MainWindow main = (MainWindow)Application.Current.MainWindow;
            if (main.CmbAdminUser.SelectedIndex == 0)
            {
                BtnAdd.Visibility = Visibility.Visible;
                BtnDel.Visibility = Visibility.Visible;
            }
            if (main.CmbAdminUser.SelectedIndex == 2)
            {
                main.BtnBack.Visibility = Visibility.Collapsed;
            }
            else
            {
                main.BtnBack.Visibility = Visibility.Visible;
            }
            context = new ТканиХакасииEntities3();
            DataGridClients.ItemsSource = context.Клиенты.ToList();
        }
        private void BtnEdit_Click(object sender, RoutedEventArgs e)
        {
            Button edit = sender as Button;
            var edit1 = edit.DataContext as Клиенты;
            var edit2 = new Windows.SaveClientWindow(context, edit1);
            edit2.ShowDialog();
            UpdateCloth();
        }

        private void SearchTB_TextChanged(object sender, TextChangedEventArgs e)
        {
            UpdateCloth();
        }

        private void BtnAdd_Click(object sender, RoutedEventArgs e)
        {
            var newCloth = new Клиенты();
            context.Клиенты.Add(newCloth);
            var add = new Windows.SaveClientWindow(context, newCloth);
            add.ShowDialog();
            UpdateCloth();
        }

        private void BtnDel_Click(object sender, RoutedEventArgs e)
        {
            var CurrentClient = DataGridClients.SelectedItem as Клиенты;
            if (MessageBox.Show($"Вы точно хотите удалить следующий элемент?", "Внимание", MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
            {
                try
                {
                    context.Клиенты.Remove(CurrentClient);
                    context.SaveChanges();
                    MessageBox.Show("Данные удалены!");
                    UpdateCloth();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message.ToString());
                }
            }
        }
        private void UpdateCloth()
        {
            var filter = context.Клиенты.ToList();
            {
                filter = filter.Where(p => p.Фамилия.ToLower().Contains(SearchTB.Text.ToLower())).ToList();
            }
            DataGridClients.ItemsSource = filter.ToList();
        }
    }
}
