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
        ТканиХакасииEntities3 context;
        public FurniturePage()
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
            var alltypes = context.ВидыФурнитур.ToList();
            alltypes.Insert(0, new ВидыФурнитур
            {
                ВидФурнитуры = "Все фурнитуры"
            });
            FilterCmb.ItemsSource = alltypes;
            FilterCmb.SelectedIndex = 0;
            UpdateCloth();

        }

        private void BtnAdd_Click(object sender, RoutedEventArgs e)
        {
            var newFur = new Фурнитура();
            context.Фурнитура.Add(newFur);
            var add = new Windows.SaveFurnitureWindow(context, newFur);
            add.ShowDialog();
            UpdateCloth();
        }

        private void BtnDel_Click(object sender, RoutedEventArgs e)
        {
            var CurrentFur = DataGridFurniture.SelectedItem as Фурнитура;
            if (MessageBox.Show($"Вы точно хотите удалить следующий элемент?", "Внимание", MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
            {
                try
                {
                    context.Фурнитура.Remove(CurrentFur);
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

        private void FilterCmb_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            UpdateCloth();
        }

        private void BtnEdit_Click(object sender, RoutedEventArgs e)
        {
            Button edit = sender as Button;
            var edit1 = edit.DataContext as Фурнитура;
            var edit2 = new Windows.SaveFurnitureWindow(context, edit1);
            edit2.ShowDialog();
            UpdateCloth();
        }
        private void UpdateCloth()
        {
            var filter = context.Фурнитура.ToList();
            if (FilterCmb.SelectedIndex > 0)
            {
                filter = filter.Where(p => p.ВидФурнитуры == (FilterCmb.SelectedValue as ВидыФурнитур).ID).ToList();
            }
            if (SearchTB.Text != null)
            {
                filter = filter.Where(p => p.Наименование.ToLower().Contains(SearchTB.Text.ToLower())).ToList();
            }
            DataGridFurniture.ItemsSource = filter.ToList();
        }
    }
}
