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
    /// Логика взаимодействия для ServicePage.xaml
    /// </summary>
    public partial class ServicePage : Page
    {
        ТканиХакасииEntities3 context;
        public ServicePage()
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
            DataGridServices.ItemsSource = context.Услуги.ToList();
        }

        private void BtnAdd_Click(object sender, RoutedEventArgs e)
        {
            var newServ = new Услуги();
            context.Услуги.Add(newServ);
            var add = new Windows.SaveServicesWindow(context, newServ);
            add.ShowDialog();
            UpdateCloth();
        }

        private void BtnDel_Click(object sender, RoutedEventArgs e)
        {
            var CurrentServ = DataGridServices.SelectedItem as Услуги;
            if (MessageBox.Show($"Вы точно хотите удалить следующий элемент?", "Внимание", MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
            {
                try
                {
                    context.Услуги.Remove(CurrentServ);
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

        private void SearchTB_TextChanged(object sender, TextChangedEventArgs e)
        {
            UpdateCloth();
        }

        private void BtnEdit_Click(object sender, RoutedEventArgs e)
        {
            Button edit = sender as Button;
            var edit1 = edit.DataContext as Услуги;
            var edit2 = new Windows.SaveServicesWindow(context, edit1);
            edit2.ShowDialog();
            UpdateCloth();
        }
        private void UpdateCloth()
        {
            var filter = context.Услуги.ToList();
            if (SearchTB.Text != null)
            {
                filter = filter.Where(p => p.Услуга.ToLower().Contains(SearchTB.Text.ToLower())).ToList();
            }
            DataGridServices.ItemsSource = filter.ToList();
        }
    }
}
