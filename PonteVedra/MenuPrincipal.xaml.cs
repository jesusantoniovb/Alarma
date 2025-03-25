using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Alarma.Clases;
using Plugin.Geolocator;
using System.IO;

namespace Alarma
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class MenuPrincipal : ContentPage
    {

        public List<DatosUser> usuarios = App.Database.GetNotesAsync().Result;
        General objeto_general = new General();

        public MenuPrincipal()
        {
            InitializeComponent();
            BindingContext = this;
            List<DatosUser> usuarios = App.Database.GetNotesAsync().Result;
            BindingContext = this;
            LblNombreCompleto.Text = usuarios[0].NombreCompleto.ToUpper();
            objeto_general.permiso_localizacion();

            if (usuarios[0].Nivel == "1")
            {
                BtnAyudasAdmin.IsVisible = true;
            }
            else
            {
                BtnAyudasAdmin.IsVisible = false;
            }



            try
            {
                byte[] Base64Stream = Convert.FromBase64String(usuarios[0].ImgEmpresa);
                ImgLogTor.Source = ImageSource.FromStream(() => new MemoryStream(Base64Stream));
            }
            catch (Exception)
            {
                
            }
                    
        }

        private async void Button_Clicked_Ayuda(object sender, EventArgs e)
        {
            ImgApoyo.Source = "apoyobn.png";
            LblEnviando.Text = "Enviando..";
            ImgLogTor.IsVisible = false;
            ImgGifCel.IsVisible = true;
            BtnAyuda.IsEnabled = false;

            SendObject_Ayuda objeto = new SendObject_Ayuda();
            objeto.Token = usuarios[0].Token;
            try
            {
                Guid myuuid = Guid.NewGuid();

                objeto.id_app = myuuid.ToString();

                var locator = CrossGeolocator.Current;
                locator.DesiredAccuracy = 50;
                if (locator.IsGeolocationAvailable)
                {
                    if (locator.IsGeolocationEnabled)
                    {
                        if (!locator.IsListening)
                        {
                            await locator.StartListeningAsync(TimeSpan.FromSeconds(1), 5);
                        }
                        var _position = await locator.GetPositionAsync(TimeSpan.FromSeconds(30));
                        objeto.lat = _position.Latitude.ToString();
                        objeto.lon = _position.Longitude.ToString();
                    }
                    else
                    {
                        await DisplayAlert("La ubicación del dispositivo esta inhabilitada", "Activela y luego inicie sesión", "Aceptar");
                    }
                }
                else
                {
                    await DisplayAlert("No tiene los permisos para acceder a su ubicación ", "Acepte los permisos y luego inicie sesión", "Aceptar");
                }
                // Use default vibration length
                RootObject_Ayuda ret = new RootObject_Ayuda();

                try
                {
                    ret = APIContext.Send<RootObject_Ayuda>("ayuda/save.php", "POST", objeto);

                    if (ret.Sync == "1") // CONEXIÓN ESTABLECIDA
                    {
                        if (ret.Save == "1") // FORMULARIO GUARDADO
                        {
                            Vibration.Vibrate();
                        }
                    }
                    else if (ret.Sync == "3")
                    {
                        await DisplayAlert("Versión antigua", "Por favor actualice la aplicación.", "OK");
                        await App.Database.DeleteAllUsuarios();

                        try
                        {
                            switch (Device.RuntimePlatform)
                            {
                                case Device.Android:
                                    {
                                        Device.OpenUri(new Uri("https://play.google.com/store/apps/details?id=com.companyname.Alarma"));
                                        break;
                                    }
                                case Device.iOS:
                                    {
                                        Device.OpenUri(new Uri("https://play.google.com/store/apps/details?id=com.companyname.Alarma"));
                                        break;
                                    }
                            }
                        }
                        catch (Exception ex)
                        {

                        }
                        Application.Current.MainPage = new NavigationPage(new MainPage());
                    }
                    else
                    {
                        await DisplayAlert("Error.", "Ha ocurrido un error al momento de intentar guardar la información.", "OK");
                    }
                }
                catch (Exception ex)
                {
                    if (ex.Message == "Error: NameResolutionFailure")
                    {
                        await DisplayAlert("Error de conexión", "Compruebe su conexión a Internet y vuelva a intentarlo", "OK");
                    }
                    else if (ex.Message == "Error: ConnectFailure (Network is unreachable)")
                    {
                        await DisplayAlert("Error de conexión", "Compruebe su conexión a Internet y vuelva a intentarlo", "OK");
                    }
                    else
                    {
                        await DisplayAlert("Error.", ex.Message, "OK");
                    }
                }
            }
            catch (FeatureNotSupportedException ex)
            {
                // Feature not supported on device
            }
            catch (Exception ex)
            {
                // Other error has occurred.
            }

            await Task.Delay(1000);

            ImgApoyo.Source = "apoyo.png";
            ImgGifCel.IsVisible = false;
            ImgLogTor.IsVisible = true;
            LblEnviando.Text = "";
            BtnAyuda.IsEnabled = true;
        }

        private async void Button_Clicked_Cerrar_Sesion(object sender, EventArgs e)
        {
            await App.Database.DeleteAllUsuarios();

            Navigation.InsertPageBefore(new MainPage(), this);
            await Navigation.PopAsync();
        }

        private void Button_Clicked_Ver_Historial(object sender, EventArgs e)
        {
            Navigation.PushAsync(new ModalAyudas());
        }

        private void Button_Clicked_Ver_Historial_Admin(object sender, EventArgs e)
        {
            Navigation.PushAsync(new ModalAyudasAdmin());
        }

        private void Button_Clicked_Agregar_Novedad(object sender, EventArgs e)
        {
            Navigation.PushAsync(new ModalReporteNovedad());
        }

        private void Button_Clicked(object sender, EventArgs e)
        {

        }
        private void Button_Clicked_Cambio(object sender, EventArgs e)
        {
            Navigation.PushAsync(new CambioPass());
        }
    }
}