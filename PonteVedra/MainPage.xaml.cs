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
using Plugin.Geolocator;

namespace Alarma
{
    // Learn more about making custom code visible in the Xamarin.Forms previewer
    // by visiting https://aka.ms/xamarinforms-previewer
    [DesignTimeVisible(false)]
    public partial class MainPage : ContentPage
    {
        
        General objeto_general = new General();
        public MainPage()
        {
            InitializeComponent();
        }
        
        public static bool ExecuteWithTimeLimit(TimeSpan timeSpan,Action codeBlock)
        {
            try
            {
                Task task = Task.Factory.StartNew(() => codeBlock());
                task.Wait(timeSpan);
                return task.IsCompleted;
            }
            catch (AggregateException ae)
            {
                throw ae.InnerExceptions[0];
            }
        }
        
        public async void Button_Clicked(object sender, EventArgs e)
        {

            objeto_general.permiso_localizacion();

            await DisplayAlert("Iniciando sesión ","Por favor espere", "Aceptar");

            if ((LblUser.Text != "") && (LblPass.Text != "") && (LblProyecto.Text != "") && (LblUser.Text != null) && (LblPass.Text != null) && (LblProyecto.Text != null)) // NO FUNCIONA BIEN
            {
                string TokenFirebase = Preferences.Get("TokenFirebase", "nada");

                boton.IsEnabled = false;
                SendObject_User objeto = new SendObject_User();
                objeto.token = "TOKENG30v1";
                objeto.user = LblUser.Text;
                objeto.pass = LblPass.Text;
                objeto.proyecto = LblProyecto.Text;
                objeto.model = DeviceInfo.Model;
                objeto.manufacturer = DeviceInfo.Manufacturer;
                objeto.name = DeviceInfo.Name;
                objeto.version = DeviceInfo.VersionString;
                objeto.version_app = "10";
                objeto.platform = DeviceInfo.Platform.ToString();
                objeto.devicetype = DeviceInfo.DeviceType.ToString();
                objeto.width = DeviceDisplay.MainDisplayInfo.Width.ToString();
                objeto.height = DeviceDisplay.MainDisplayInfo.Height.ToString();
                objeto.lat = "";
                objeto.lon = "";
                objeto.TokenFirebase = TokenFirebase;
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
                RootObject ret = new RootObject();
                if (objeto.lat!="")
                {
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
                            user.ImgEmpresa = ret.ImgEmpresa;
                            user.Token = ret.Token;
                            user.NombreCompleto = ret.NombreCompleto;
                            user.TokenFirebase = TokenFirebase;
                            user.Nivel = ret.Nivel;

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
                        else if (ret.Sync == "4")
                        {
                            await DisplayAlert("Inicio de sesión fallido", "El usuario no pertenece al proyecto.", "OK");
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
                            await DisplayAlert("Error de conexión", "Compruebe su conexión a Internet y vuelva a intentarlo", "Aceptar");
                        }
                        else if (ex.Message == "Error: ConnectFailure (Network is unreachable)")
                        {
                            await DisplayAlert("Error de conexión", "Compruebe su conexión a Internet y vuelva a intentarlo", "Aceptar");
                        }
                        else
                        {
                            await DisplayAlert("Error.", ex.Message, "Aceptar");
                        }
                    }
                }
                else
                {
                    await DisplayAlert("No se ha captado la ubicación del dispositivo", "Contacte con los desarrolladores", "Aceptar");
                }
                boton.IsEnabled = true;
            }
            else
            {
                await DisplayAlert("Complete todos los campos", "Ingrese el usuario, la contraseña y el proyecto.", "Aceptar");
            }
        }
    }
}
