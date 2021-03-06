using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.IO;
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
    /// Логика взаимодействия для SaveClothWindow.xaml
    /// </summary>
    public partial class SaveClothWindow : Window
    {
        ТканиХакасииEntities3 context;
        public SaveClothWindow(ТканиХакасииEntities3 context1, Ткани cloth)
        {
            InitializeComponent();
            this.context = context1;
            CmbMaterial.ItemsSource = context.Материалы.ToList();
            CmbVidTkani.ItemsSource = context.ВидыТканей.ToList();
            CmbProiz.ItemsSource = context.Производители.ToList();
            this.DataContext = cloth;
        }

        private void BtnAddPhoto_Click(object sender, RoutedEventArgs e)
        {
            OpenFileDialog openFile = new OpenFileDialog();
            openFile.Filter = "Image files:.jpg,.png | *.jpg; *.png; *.*";
            openFile.ShowDialog();
            if (openFile.FileName.Length != 0)
            {
                string namefile = openFile.FileName;
                byte[] image = File.ReadAllBytes(namefile);
                var cloth = (Ткани)this.DataContext;
                cloth.Фото = image;
                Img.Source = new BitmapImage(new Uri(namefile));
            }
        }

        private void BtnSave_Click(object sender, RoutedEventArgs e)
        {

            context.SaveChanges();
            this.Close();
        }
    }
}
