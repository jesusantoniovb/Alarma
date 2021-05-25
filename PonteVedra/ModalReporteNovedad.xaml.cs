using System;
using System.Collections.Generic;
using System.Linq;
using System.Collections.ObjectModel;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel;
using Alarma.Clases;
using System.IO;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Plugin.Media;
using Plugin.Media.Abstractions;
using Xamarin.Essentials;

namespace Alarma
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    [DesignTimeVisible(false)]
    public partial class ModalReporteNovedad : ContentPage
    {
        public static ObservableCollection<ListadoFotos> datos_fotos = new ObservableCollection<ListadoFotos>();
        public ListadoFotos res_fotos = new ListadoFotos();
        public List<DatosUser> usuarios = App.Database.GetNotesAsync().Result;

        public ModalReporteNovedad()
        {
            InitializeComponent();
            listView_Fotos.ItemsSource = datos_fotos;
        }

        private async void Button_Clicked_EnviarForm(object sender, EventArgs e)
        { 
            bool Val = true;
            string MsjVal = "";

            ToolButNov.Text = "Enviando..";
            ToolButNov.IsEnabled = false;

            SendObject_ReportarNovedad objeto = new SendObject_ReportarNovedad();

            objeto.Token = usuarios[0].Token;

            var request = new GeolocationRequest(GeolocationAccuracy.Medium);
            var location = await Geolocation.GetLocationAsync(request);
            objeto.lat = location.Latitude.ToString();
            objeto.lon = location.Longitude.ToString();


            objeto.Novedad = EditNovedad.Text;
            if (objeto.Novedad == "")
            {
                Val = false;
                MsjVal += "- Ingrese la novedad.\n";
            }

            objeto.Fotos = datos_fotos.ToList();

            // VALIDAR ESTO ESTA NO SIRVE
            if ((objeto.Fotos == null) || (objeto.Fotos.Count == 0))
            {
                Val = false;
                MsjVal += "- Agregue alguna foto.\n";
            }

            if (Val)
            {
                RootObject_ReportarNovedad ret = new RootObject_ReportarNovedad();

                try
                {
                    ret = APIContext.Send<RootObject_ReportarNovedad>("novedades/save.php", "POST", objeto);

                    if (ret.Sync == "1") // CONEXIÓN ESTABLECIDA
                    {
                        if (ret.Save == "1") // FORMULARIO GUARDADO
                        {
                            await DisplayAlert("Datos guardados.", "Los datos han sido guardados exitosamente.", "OK");
                            //await Navigation.PopAsync();
                            datos_fotos.Clear();
                            EditNovedad.Text = "";
                            // LIMPIAR FORMULARIO, VARIABLES Y ENVIAR AL MENÚ PRINCIPAL 
                        }
                        else
                        {
                            await DisplayAlert("Error.", "Ha ocurrido un error al momento de intentar guardar la información.", "OK");
                        }
                    }
                    else
                    {
                        await DisplayAlert("Fallo de conexión.", "Intente nuevamente.", "OK");
                    }
                }
                catch (Exception ex)
                {
                    if (ex.Message == "Error: NameResolutionFailure")
                    {
                        await DisplayAlert("Error de conexión", "Compruebe su conexión a Internet y vuelva a intentarlo", "OK");
                    }
                    else
                    {
                        await DisplayAlert("Error.", ex.Message, "OK");
                    }
                }
            }
            else
            {
                await DisplayAlert("Complete los siguientes datos", MsjVal, "OK");
            }

            ToolButNov.Text = "Enviar";
            ToolButNov.IsEnabled = true;
        }

        private async void CameraButton_Clicked(object sender, EventArgs e)
        {
            if (!CrossMedia.Current.IsCameraAvailable || !CrossMedia.Current.IsTakePhotoSupported)
            {
                await DisplayAlert("No Camera", ":( No camera available.", "OK");
                return;
            }

            var file = await CrossMedia.Current.TakePhotoAsync(new Plugin.Media.Abstractions.StoreCameraMediaOptions
            {
                Directory = "Test",
                SaveToAlbum = true,
                CompressionQuality = 75,
                CustomPhotoSize = 50,
                PhotoSize = PhotoSize.MaxWidthHeight,
                MaxWidthHeight = 2000,
                DefaultCamera = CameraDevice.Front
            });

            if (file == null)
                return;

            ListadoFotos res = new ListadoFotos();
            res.ruta = file.Path;
            res.foto = StreamToString(file.GetStream());
            res.origen = "Camara";
            ModalReporteNovedad.datos_fotos.Add(res);
        }

        private async void GaleriaButton_Clicked(object sender, EventArgs e)
        {
            if (!CrossMedia.Current.IsPickPhotoSupported)
            {
                await DisplayAlert("Photos Not Supported", ":( Permission not granted to photos.", "OK");
                return;
            }
            var file = await Plugin.Media.CrossMedia.Current.PickPhotoAsync(new Plugin.Media.Abstractions.PickMediaOptions
            {
                PhotoSize = Plugin.Media.Abstractions.PhotoSize.Medium,

            });

            if (file == null)
                return;

            ListadoFotos res = new ListadoFotos();
            res.ruta = file.Path;
            res.foto = StreamToString(file.GetStream());
            res.origen = "Galeria";
            ModalReporteNovedad.datos_fotos.Add(res);
        }

        private async void TapGestureRecognizer_Tapped(object sender, EventArgs e)
        {
            var action = await DisplayAlert("Eliminar", "¿Desea eliminar esta imagen?", "Si", "No");
            if (action)
            {
                ListadoFotos actual = (ListadoFotos)((TapGestureRecognizer)((Image)sender).GestureRecognizers[0]).CommandParameter;
                datos_fotos.Remove(actual);
            }
        }

        private string StreamToString(Stream stream)
        {
            var bytes = new Byte[(int)stream.Length];

            stream.Seek(0, SeekOrigin.Begin);
            stream.Read(bytes, 0, (int)stream.Length);

            return Convert.ToBase64String(bytes);
        }
    }
}