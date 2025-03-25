using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using Alarma.Clases;
using Android.App;
using Android.Content;
using Android.Media;
using Android.Util;
using Firebase.Messaging;
using Newtonsoft.Json;
using Xamarin.Essentials;
using System.IO;
using Xamarin.Forms;

namespace Alarma.Droid
{
    [Service]
    [IntentFilter(new[] { "com.google.firebase.MESSAGING_EVENT" })]
    public class MyFirebaseMessagingService : FirebaseMessagingService
    {
        const string TAG = "MyFirebaseMsgService";
        AndroidNotificationManager androidNotification = new AndroidNotificationManager();


        public override void OnMessageReceived(RemoteMessage message)
        {
            IDictionary<string, string> MensajeData = message.Data;

            string Titulo = MensajeData["notiTitle"];
            string SubTitulo = MensajeData["notiBody"];

            var TokensServer = MensajeData["notiData"];


            List<DatosUser> usuarios = App.Database.GetNotesAsync().Result;

            if (TokensServer.Contains(usuarios[0].Token))
            {
                androidNotification.CrearNotificacionLocal(Titulo, SubTitulo);

            }



            /*
            Log.Debug(TAG, "From: " + message.From);
            Log.Debug(TAG, "Notification Message Body: " + message.GetNotification().Body);
            androidNotification.CrearNotificacionLocal(message.GetNotification().Title, message.GetNotification().Body); */
        }

        public override void OnNewToken(string token)
        {
            base.OnNewToken(token);

            Preferences.Set("TokenFirebase",token);
            sendregisterToken(token);
        }

        public void sendregisterToken(string token)
        {

        }
    }
}