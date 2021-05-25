using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;
using Alarma.Clases;
using System.Reflection;
using System.Net;
using Newtonsoft.Json;
using System.IO;
using Xamarin.Essentials;

namespace Alarma
{
    // Learn more about making custom code visible in the Xamarin.Forms previewer
    // by visiting https://aka.ms/xamarinforms-previewer
    [DesignTimeVisible(false)]
    public partial class MainPage : ContentPage
    {
        public MainPage()
        {
            InitializeComponent();
        }

        private async void Button_Clicked(object sender, EventArgs e)
        {
            if ((LblUser.Text != "") && (LblPass.Text != "") && (LblUser.Text != null) && (LblPass.Text != null)) // NO FUNCIONA BIEN
            {
                SendObject_User objeto = new SendObject_User();
                objeto.token = "TOKENG30v1";
                objeto.user = LblUser.Text;
                objeto.pass = LblPass.Text;
                objeto.model = DeviceInfo.Model;
                objeto.manufacturer = DeviceInfo.Manufacturer;
                objeto.name = DeviceInfo.Name;
                objeto.version = DeviceInfo.VersionString;
                objeto.version_app = "4";
                objeto.platform = DeviceInfo.Platform.ToString();
                objeto.devicetype = DeviceInfo.DeviceType.ToString();
                objeto.width = DeviceDisplay.MainDisplayInfo.Width.ToString();
                objeto.height = DeviceDisplay.MainDisplayInfo.Height.ToString();
                var request = new GeolocationRequest(GeolocationAccuracy.Medium);
                var location = await Geolocation.GetLocationAsync(request);
                objeto.lat = location.Latitude.ToString();
                objeto.lon = location.Longitude.ToString();

                RootObject ret = new RootObject();

                try
                {
                    ret = APIContext.Send<RootObject>("usuarios/login.php", "POST", objeto);

                    if (ret.Sync == "1")
                    {
                        await DisplayAlert("Bienvenido", ret.NombreCompleto, "OK"); // SI ES MUY FASTIDIOSO QUITAR MSJ

                        DatosUser user = new DatosUser();
                        user.Date = DateTime.UtcNow;
                        user.User = LblUser.Text;
                        user.Pass = LblPass.Text;
                        user.Token = ret.Token;
                        user.NombreCompleto = ret.NombreCompleto;

                        await App.Database.SaveNoteAsync(user);

                        Navigation.InsertPageBefore(new MenuPrincipal(), this);
                        await Navigation.PopAsync();
                    }
                    else if (ret.Sync == "0")
                    {
                        await DisplayAlert("Fallo de conexión", "No se ha podido establecer una conexión con el servidor.", "OK");
                    }
                    else if (ret.Sync == "2")
                    {
                        await DisplayAlert("Inicio de sesión fallido", "Usuario o contraseña incorrectos.", "OK");
                    }
                    else if (ret.Sync == "3")
                    {
                        await DisplayAlert("Versión antigua", "Por favor actualice la aplicación.", "OK");

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
            else
            {
                await DisplayAlert("Complete todos los campos", "Ingrese el usuario y la contraseña", "OK");
            }
        }
    }
}
