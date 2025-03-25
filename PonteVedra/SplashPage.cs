using System;
using System.Collections.Generic;
using System.Text;
using Alarma.Clases;
using Xamarin.Essentials;
using Xamarin.Forms;


namespace Alarma
{
    public class SplashPage : ContentPage
    {
        public static NavigationPage PrincipalPage { get; set; }
        Image splashImage;

        public SplashPage()
        {
            NavigationPage.SetHasNavigationBar(this, false);

            var sub = new AbsoluteLayout();
            splashImage = new Image
            {
                Source = "splash.png",
                WidthRequest = 250,
                HeightRequest = 250
            };
            AbsoluteLayout.SetLayoutFlags(splashImage,
               AbsoluteLayoutFlags.PositionProportional);
            AbsoluteLayout.SetLayoutBounds(splashImage,
             new Rectangle(0.5, 0.5, AbsoluteLayout.AutoSize, AbsoluteLayout.AutoSize));

            sub.Children.Add(splashImage);

            this.BackgroundColor = Color.White;
            this.Content = sub;
        }

        protected async override void OnAppearing()
        {
            base.OnAppearing();
            await splashImage.FadeTo(1, 1500);
            
            List<DatosUser> usuarios = App.Database.GetNotesAsync().Result;

            string TokenFirebase = Preferences.Get("TokenFirebase", "nada");
            bool valFirebase = true;

            if (TokenFirebase == "nada")
            {
                valFirebase = false;
            }

            if (usuarios.Count > 0)
            {
                if (TokenFirebase != usuarios[0].TokenFirebase)
                {
                    valFirebase = false;
                }
            }

            if (valFirebase)
            {
                if (usuarios.Count > 0)
                {
                    SendObject_ValidarToken objeto = new SendObject_ValidarToken();
                    objeto.Token = usuarios[0].Token;

                    RootObject ret = new RootObject();
                    string test = "0";
                    try
                    {
                        ret = APIContext.Send<RootObject>("usuarios/validar_token.php", "POST", objeto);
                        if (ret.Sync == "1")
                        {
                            await splashImage.FadeTo(0, 1500);
                            Application.Current.MainPage = new NavigationPage(new MenuPrincipal());
                        }
                        else if (ret.Sync == "0")
                        {
                            await DisplayAlert("Fallo de conexión", "No se ha podido establecer una conexión con el servidor.", "OK");
                        }
                        else if (ret.Sync == "2")
                        {
                            await DisplayAlert("Inicio de sesión fallido", "Por favor vuelva a iniciar sesión.", "OK");
                            await App.Database.DeleteAllUsuarios();
                            await splashImage.FadeTo(0, 1500);
                            Application.Current.MainPage = new NavigationPage(new MainPage());
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
                            await splashImage.FadeTo(0, 1500);
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
                    await splashImage.FadeTo(0, 1500);
                    Application.Current.MainPage = new NavigationPage(new MainPage());
                }
            }
            else
            {
                await splashImage.FadeTo(0, 1500);
                Application.Current.MainPage = new NavigationPage(new MainPage());
            }
        }
    }
}
