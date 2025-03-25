using Xamarin.Essentials;

namespace Alarma
{
    class General
    {
        public async void permiso_localizacion()
        {
            var status = await Permissions.CheckStatusAsync<Permissions.LocationWhenInUse>();
            if (status == PermissionStatus.Denied && DeviceInfo.Platform == DevicePlatform.Android)
            {
                status = await Permissions.RequestAsync<Permissions.LocationWhenInUse>();
            }
        }
    }
}
