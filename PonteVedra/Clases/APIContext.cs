using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Net;
using System.Reflection;
using System.Text;

namespace Alarma.Clases
{
    public static class APIContext
    {
        public const string ApiURL = "https://app.guardcontrol.co/paniccontrol/api/V1.0.0/";

        public static T Send<T>(string url, string Metodo, object Body = null, List<string> header = null)
        {
            string json = string.Empty;
            string get_parameters = string.Empty;
            try
            {
                if (Metodo == "GET" && Body != null)
                {
                    PropertyInfo[] properties = Body.GetType().GetProperties();
                    foreach (PropertyInfo p in properties)
                    {
                        if (p.GetValue(Body) != null)
                        {
                            get_parameters += p.Name + "=" + p.GetValue(Body) + "&";
                        }
                    }
                }

                HttpWebRequest wRequest1 = (HttpWebRequest)WebRequest.Create(ApiURL + url + get_parameters);

                if (header != null)
                {
                    foreach (string h in header)
                    {
                        wRequest1.Headers.Add(h);
                    }
                }

                wRequest1.ContentType = "application/json";
                wRequest1.Accept = "application/json";
                wRequest1.Method = Metodo;
                wRequest1.ContentLength = 0;

                if (Body != null && Metodo != "GET")
                {
                    string BodyString = JsonConvert.SerializeObject(Body);
                    byte[] body = Encoding.UTF8.GetBytes(BodyString);
                    wRequest1.ContentLength = body.Length;
                    using (Stream srRead = wRequest1.GetRequestStream())
                    {
                        srRead.Write(body, 0, body.Length);

                        srRead.Close();
                    }

                    //try to add

                }

                WebResponse wResponse1 = wRequest1.GetResponse();
                using (StreamReader srRead = new StreamReader(wResponse1.GetResponseStream()))
                {
                    json = srRead.ReadToEnd();
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }

            return JsonConvert.DeserializeObject<T>(json);
        }
    }
}