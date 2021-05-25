using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Collections.ObjectModel;
using Alarma.Clases;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Alarma
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class ModalAyudas : ContentPage
    {
        public ObservableCollection<ListadoAyudas> datos_listado_ayudas = new ObservableCollection<ListadoAyudas>();
        public ListadoAyudas res_listado_ayudas = new ListadoAyudas();

        List<ListadoAyudas> ciudadesTors = new List<ListadoAyudas>();
        public List<DatosUser> usuarios = App.Database.GetNotesAsync().Result;

        public ModalAyudas()
        {
            InitializeComponent();

            SendObject_Ayuda objeto = new SendObject_Ayuda();
            List<DatosUser> usuarios = App.Database.GetNotesAsync().Result;
            objeto.Token = usuarios[0].Token;

            try
            {
                datos_listado_ayudas = APIContext.Send<ObservableCollection<ListadoAyudas>>("ayuda/ayudas.php", "POST", objeto);
            }
            catch (Exception ex)
            {
                if (ex.Message == "Error: NameResolutionFailure")
                {
                    DisplayAlert("Error de conexión", "Compruebe su conexión a Internet y vuelva a intentarlo", "OK");
                }
                else if (ex.Message == "Error: ConnectFailure (Network is unreachable)")
                {
                    DisplayAlert("Error de conexión", "Compruebe su conexión a Internet y vuelva a intentarlo", "OK");
                }
                else
                {
                    DisplayAlert("Error.", ex.Message, "OK");
                }
            }
            listView_Ayudas.ItemsSource = datos_listado_ayudas;
        }

        private async void TapGestureRecognizer_Tapped(object sender, EventArgs e)
        {
            var action = await DisplayAlert("Confirmar", "¿Desea confirmar el apoyo recibido?", "Si", "No");
            if (action)
            {
                ListadoAyudas actual = (ListadoAyudas)((TapGestureRecognizer)((Image)sender).GestureRecognizers[0]).CommandParameter;
                datos_listado_ayudas[actual.Pos].Estado = false;

                SendObject_ConfirmarAyuda objeto = new SendObject_ConfirmarAyuda();
                objeto.Token = usuarios[0].Token;
                objeto.Cod = actual.Codigo;

                RootObject_Ayuda ret = new RootObject_Ayuda();

                try
                {
                    ret = APIContext.Send<RootObject_Ayuda>("ayuda/confirmar.php", "POST", objeto);

                    if (ret.Sync == "1")
                    {
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
        }
    }
}