using System;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Alarma.Datos;
using System.IO;
using Alarma.Clases;
using Matcha.BackgroundService;

namespace Alarma
{
    public partial class App : Application
    {
        static DatosDB database;

        public static DatosDB Database
        {
            get
            {
                if (database == null)
                {
                    database = new DatosDB(Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData), "Alarma.db3"));
                }
                return database;
            }
        }

        public App()
        {
            InitializeComponent();

            MainPage = new SplashPage();
        }

        protected override void OnStart()
        {
            // Registra
            //BackgroundAggregatorService.Add(() => new BackgroundService(60));

            // Inicia
            //BackgroundAggregatorService.StartBackgroundService();
        }

        protected override void OnSleep()
        {
            //BackgroundAggregatorService.StopBackgroundService();
        }

        protected override void OnResume()
        {
            //BackgroundAggregatorService.StartBackgroundService();
        }
        
    }
}
