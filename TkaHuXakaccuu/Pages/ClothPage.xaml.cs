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
    /// Логика взаимодействия для ClothPage.xaml
    /// </summary>
    public partial class ClothPage : Page
    {
        ТканиХакасииEntities1 context;
        public ClothPage()
        {
            InitializeComponent();
            context = new ТканиХакасииEntities1();
            var alltypes = context.Материалы.ToList();
            alltypes.Insert(0, new Материалы
            { 
                Материал = "Все материалы" 
            });
            FilterCmb.ItemsSource= alltypes;
            FilterCmb.SelectedIndex = 0;
            UpdateCloth();
        }
        private void UpdateCloth()
        {
            var filter = context.Ткани.ToList();
            if (FilterCmb.SelectedIndex > 0)
            {
                filter = filter.Where(p => p.Материал == (FilterCmb.SelectedValue as Материалы).ID).ToList();
            }
            if (SearchTB.Text != null)
            {
                filter = filter.Where(p=> p.Наименование.ToLower().Contains(SearchTB.Text.ToLower())).ToList();
            }
            DataGridCloth.ItemsSource = filter.ToList();
        }
        private void BtnEdit_Click(object sender, RoutedEventArgs e)
        {
            Button edit = sender as Button;
            var edit1 = edit.DataContext as Ткани;
            var edit2 = new Windows.SaveClothWindow(context, edit1);
            edit2.ShowDialog();
            UpdateCloth();
        }

        private void BtnDel_Click(object sender, RoutedEventArgs e)
        {
           var CurrentCloth = DataGridCloth.SelectedItem as Ткани;
            if (MessageBox.Show($"Вы точно хотите удалить следующий элемент?", "Внимание", MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
            {
                try
                {
                    context.Ткани.Remove(CurrentCloth);
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

        private void BtnAdd_Click(object sender, RoutedEventArgs e)
        {
            var newCloth = new Ткани();
            context.Ткани.Add(newCloth);
            var add = new Windows.SaveClothWindow(context, newCloth);
            add.ShowDialog();
            UpdateCloth();
        }

        private void SearchTB_TextChanged(object sender, TextChangedEventArgs e)
        {
            UpdateCloth();
        }

        private void FilterCmb_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            UpdateCloth();
        }   
    }
}

