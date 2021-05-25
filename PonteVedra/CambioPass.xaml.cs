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
    public partial class CambioPass : ContentPage
    {
        public List<DatosUser> usuarios = App.Database.GetNotesAsync().Result;
        public CambioPass()
        {
            InitializeComponent();
        }

        private async void Button_Clicked(object sender, EventArgs e)
        {
            if ((LblClaantigua.Text != "") && (LblClanueva.Text != "") && (LblClanuevarepeat.Text != "") && (LblClaantigua.Text != null) && (LblClanueva.Text != null) && (LblClanuevarepeat.Text != null)) // NO FUNCIONA BIEN
            {
                if (LblClanueva.Text == LblClanuevarepeat.Text)//VERIFICA QUE LAS CLAVES NUEVAS SEAN IGUALES
                {
                    SendObject_Cambio_Clave objeto = new SendObject_Cambio_Clave();
                    objeto.token = usuarios[0].Token;
                    objeto.pass_antigua = LblClaantigua.Text;
                    objeto.pass_nueva = LblClanueva.Text;
                    objeto.pass_nueva_repeat = LblClanuevarepeat.Text;


                    RootObject ret = new RootObject();

                    try
                    {
                        ret = APIContext.Send<RootObject>("usuarios/reset_password.php", "POST", objeto);

                        if (ret.Sync == "1")
                        {
                            await DisplayAlert("Clave cambiada", "OK", "OK"); 
                            Navigation.InsertPageBefore(new MenuPrincipal(), this);
                            await Navigation.PopAsync();
                        }
                        else if (ret.Sync == "0")
                        {
                            await DisplayAlert("Fallo de conexión", "No se ha podido establecer una conexión con el servidor.", "OK");
                        }
                        else if (ret.Sync == "2")
                        {
                            await DisplayAlert("Clave Incorrecta", "Vuelva a intentarlo.", "OK");
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
                    await DisplayAlert("La clave nueva y su repetición deben ser iguales", "Cambio de clave", "OK");
                }
            }
            else
            {
                await DisplayAlert("Complete todos los campos", "Ingrese el clave antigua y nueva", "OK");
            }
        }
    }
}
