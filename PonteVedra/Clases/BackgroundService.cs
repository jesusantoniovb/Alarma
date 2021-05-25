using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using Matcha.BackgroundService;
using Alarma.Clases;
using Xamarin.Essentials;

namespace Alarma.Clases
{

    public class BackgroundService : IPeriodicTask
    {
        public TimeSpan Interval { get; set; }
        public List<DatosUser> usuarios = App.Database.GetNotesAsync().Result;

        public BackgroundService(int seconds)
        {
            Interval = TimeSpan.FromSeconds(seconds);
        }

        public async Task<bool> StartJob()
        {
            List<DatosUser> usuarios = App.Database.GetNotesAsync().Result;
            /*
            if (usuarios.Count > 0)
            {
                SendObject_Ayuda objeto = new SendObject_Ayuda();
                objeto.Token = usuarios[0].Token;
                try
                {
                    var request = new GeolocationRequest(GeolocationAccuracy.Medium);
                    var location = await Geolocation.GetLocationAsync(request);
                    objeto.lat = location.Latitude.ToString();
                    objeto.lon = location.Longitude.ToString();

                    RootObject_Ayuda ret = new RootObject_Ayuda();

                    try
                    {
                        ret = APIContext.Send<RootObject_Ayuda>("ayuda/save.php", "POST", objeto);

                        if (ret.Sync == "1") // CONEXIÓN ESTABLECIDA
                        {
                            if (ret.Save == "1") // FORMULARIO GUARDADO
                            {

                            }
                            else
                            {
                                
                            }
                        }
                        else
                        {
                            
                        }
                    }
                    catch (Exception ex)
                    {
                        if (ex.Message == "Error: NameResolutionFailure")
                        {
                            
                        }
                        else
                        {
                            
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
            }*/
            //Return true para continuar
            return true;

            //Return false para parar
            //return false;
        }
    }
}