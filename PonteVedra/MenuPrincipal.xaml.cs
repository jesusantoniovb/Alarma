using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Alarma.Clases;

namespace Alarma
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class MenuPrincipal : ContentPage
    {

        public List<DatosUser> usuarios = App.Database.GetNotesAsync().Result;
        public MenuPrincipal()
        {
            InitializeComponent();
            BindingContext = this;
            List<DatosUser> usuarios = App.Database.GetNotesAsync().Result;
            BindingContext = this;
            LblNombreCompleto.Text = usuarios[0].NombreCompleto.ToUpper();
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
                var request = new GeolocationRequest(GeolocationAccuracy.Medium);
                var location = await Geolocation.GetLocationAsync(request);
                objeto.lat = location.Latitude.ToString();
                objeto.lon = location.Longitude.ToString();
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

        private async void Button_Clicked_Ver_Historial(object sender, EventArgs e)
        {
            Navigation.PushAsync(new ModalAyudas());
        }

        private async void Button_Clicked_Agregar_Novedad(object sender, EventArgs e)
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