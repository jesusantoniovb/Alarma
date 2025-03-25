; ModuleID = 'obj\Debug\100\android\marshal_methods.x86_64.ll'
source_filename = "obj\Debug\100\android\marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 8
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [280 x i64] [
	i64 24362543149721218, ; 0: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 67
	i64 73844633353953673, ; 1: Alarma.dll => 0x106594d83a1a189 => 12
	i64 120698629574877762, ; 2: Mono.Android => 0x1accec39cafe242 => 17
	i64 196720943101637631, ; 3: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 139
	i64 210515253464952879, ; 4: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 57
	i64 232391251801502327, ; 5: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 89
	i64 295915112840604065, ; 6: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 90
	i64 634308326490598313, ; 7: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 76
	i64 687654259221141486, ; 8: Xamarin.GooglePlayServices.Base => 0x98b09e7c92917ee => 119
	i64 702024105029695270, ; 9: System.Drawing.Common => 0x9be17343c0e7726 => 130
	i64 720058930071658100, ; 10: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 70
	i64 799765834175365804, ; 11: System.ComponentModel.dll => 0xb1956c9f18442ac => 9
	i64 870603111519317375, ; 12: SQLitePCLRaw.lib.e_sqlite3.android => 0xc1500ead2756d7f => 27
	i64 872800313462103108, ; 13: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 66
	i64 940822596282819491, ; 14: System.Transactions => 0xd0e792aa81923a3 => 128
	i64 996343623809489702, ; 15: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 111
	i64 1000557547492888992, ; 16: Mono.Security.dll => 0xde2b1c9cba651a0 => 135
	i64 1120440138749646132, ; 17: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 116
	i64 1301485588176585670, ; 18: SQLitePCLRaw.core => 0x120fce3f338e43c6 => 26
	i64 1315114680217950157, ; 19: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 52
	i64 1400031058434376889, ; 20: Plugin.Permissions.dll => 0x136de8d4787ec4b9 => 23
	i64 1425944114962822056, ; 21: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 11
	i64 1465843056802068477, ; 22: Xamarin.Firebase.Components.dll => 0x1457b87e6928f7fd => 102
	i64 1518315023656898250, ; 23: SQLitePCLRaw.provider.e_sqlite3 => 0x151223783a354eca => 28
	i64 1624659445732251991, ; 24: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 50
	i64 1628611045998245443, ; 25: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 78
	i64 1636321030536304333, ; 26: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 71
	i64 1731380447121279447, ; 27: Newtonsoft.Json => 0x18071957e9b889d7 => 19
	i64 1743969030606105336, ; 28: System.Memory.dll => 0x1833d297e88f2af8 => 32
	i64 1795316252682057001, ; 29: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 51
	i64 1836611346387731153, ; 30: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 89
	i64 1837131419302612636, ; 31: Xamarin.Google.Android.DataTransport.TransportBackendCct.dll => 0x197ecd4ad53dce9c => 114
	i64 1875917498431009007, ; 32: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 48
	i64 1981742497975770890, ; 33: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 77
	i64 2133195048986300728, ; 34: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 19
	i64 2136356949452311481, ; 35: Xamarin.AndroidX.MultiDex.dll => 0x1da5dd539d8acbb9 => 82
	i64 2165725771938924357, ; 36: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 55
	i64 2262844636196693701, ; 37: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 66
	i64 2284400282711631002, ; 38: System.Web.Services => 0x1fb3d1f42fd4249a => 134
	i64 2287834202362508563, ; 39: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 7
	i64 2329709569556905518, ; 40: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 74
	i64 2337758774805907496, ; 41: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 40
	i64 2470498323731680442, ; 42: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 61
	i64 2479423007379663237, ; 43: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 94
	i64 2497223385847772520, ; 44: System.Runtime => 0x22a7eb7046413568 => 41
	i64 2547086958574651984, ; 45: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 47
	i64 2592350477072141967, ; 46: System.Xml.dll => 0x23f9e10627330e8f => 42
	i64 2624866290265602282, ; 47: mscorlib.dll => 0x246d65fbde2db8ea => 18
	i64 2694427813909235223, ; 48: Xamarin.AndroidX.Preference.dll => 0x256487d230fe0617 => 86
	i64 2783046991838674048, ; 49: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 40
	i64 2801558180824670388, ; 50: Plugin.CurrentActivity.dll => 0x26e1225279a4e0b4 => 20
	i64 2960931600190307745, ; 51: Xamarin.Forms.Core => 0x2917579a49927da1 => 109
	i64 3017704767998173186, ; 52: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 116
	i64 3289520064315143713, ; 53: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 73
	i64 3303437397778967116, ; 54: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 49
	i64 3311221304742556517, ; 55: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 35
	i64 3364695309916733813, ; 56: Xamarin.Firebase.Common => 0x2eb1cc8eb5028175 => 101
	i64 3411255996856937470, ; 57: Xamarin.GooglePlayServices.Basement => 0x2f5737416a942bfe => 120
	i64 3493805808809882663, ; 58: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 92
	i64 3522470458906976663, ; 59: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 91
	i64 3531994851595924923, ; 60: System.Numerics => 0x31042a9aade235bb => 34
	i64 3571415421602489686, ; 61: System.Runtime.dll => 0x319037675df7e556 => 41
	i64 3609787854626478660, ; 62: Plugin.CurrentActivity => 0x32188aeda587da44 => 20
	i64 3716579019761409177, ; 63: netstandard.dll => 0x3393f0ed5c8c5c99 => 126
	i64 3727469159507183293, ; 64: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 88
	i64 3772598417116884899, ; 65: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 67
	i64 3869649043256705283, ; 66: System.Diagnostics.Tools => 0x35b3c14d74bf0103 => 4
	i64 3966267475168208030, ; 67: System.Memory => 0x370b03412596249e => 32
	i64 4154383907710350974, ; 68: System.ComponentModel => 0x39a7562737acb67e => 9
	i64 4187479170553454871, ; 69: System.Linq.Expressions => 0x3a1cea1e912fa117 => 139
	i64 4247996603072512073, ; 70: Xamarin.GooglePlayServices.Tasks => 0x3af3ea6755340049 => 123
	i64 4335356748765836238, ; 71: Xamarin.Google.Android.DataTransport.TransportBackendCct => 0x3c2a47fe48c7b3ce => 114
	i64 4337444564132831293, ; 72: SQLitePCLRaw.batteries_v2.dll => 0x3c31b2d9ae16203d => 25
	i64 4500292229471022193, ; 73: Xamarin.Google.Dagger.dll => 0x3e743ff06b122c71 => 117
	i64 4525561845656915374, ; 74: System.ServiceModel.Internals => 0x3ece06856b710dae => 125
	i64 4636684751163556186, ; 75: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 96
	i64 4702770163853758138, ; 76: Xamarin.Firebase.Components => 0x4143988c34cf0eba => 102
	i64 4782108999019072045, ; 77: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0x425d76cc43bb0a2d => 54
	i64 4794310189461587505, ; 78: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 47
	i64 4795410492532947900, ; 79: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 91
	i64 5081566143765835342, ; 80: System.Resources.ResourceManager.dll => 0x4685597c05d06e4e => 1
	i64 5099468265966638712, ; 81: System.Resources.ResourceManager => 0x46c4f35ea8519678 => 1
	i64 5142919913060024034, ; 82: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 110
	i64 5202753749449073649, ; 83: Plugin.Media => 0x4833e4f841be63f1 => 22
	i64 5203618020066742981, ; 84: Xamarin.Essentials => 0x4836f704f0e652c5 => 99
	i64 5205316157927637098, ; 85: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 80
	i64 5334137958787756892, ; 86: System.Reactive.Linq.dll => 0x4a06aa364878b35c => 38
	i64 5336705035019254128, ; 87: Matcha.BackgroundService.Droid => 0x4a0fc8f44b5c7970 => 16
	i64 5348796042099802469, ; 88: Xamarin.AndroidX.Media => 0x4a3abda9415fc165 => 81
	i64 5376510917114486089, ; 89: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 94
	i64 5408338804355907810, ; 90: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 93
	i64 5446034149219586269, ; 91: System.Diagnostics.Debug => 0x4b94333452e150dd => 5
	i64 5451019430259338467, ; 92: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 60
	i64 5507995362134886206, ; 93: System.Core.dll => 0x4c705499688c873e => 30
	i64 5692067934154308417, ; 94: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 98
	i64 5757522595884336624, ; 95: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 58
	i64 5767696078500135884, ; 96: Xamarin.Android.Support.Annotations.dll => 0x500af9065b6a03cc => 44
	i64 5814345312393086621, ; 97: Xamarin.AndroidX.Preference => 0x50b0b44182a5c69d => 86
	i64 5896680224035167651, ; 98: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 75
	i64 6085203216496545422, ; 99: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 111
	i64 6086316965293125504, ; 100: FormsViewGroup.dll => 0x5476f10882baef80 => 13
	i64 6092862891035488599, ; 101: Xamarin.Firebase.Measurement.Connector.dll => 0x548e32849d547157 => 107
	i64 6183170893902868313, ; 102: SQLitePCLRaw.batteries_v2 => 0x55cf092b0c9d6f59 => 25
	i64 6319713645133255417, ; 103: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 76
	i64 6401687960814735282, ; 104: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 74
	i64 6504860066809920875, ; 105: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 55
	i64 6548213210057960872, ; 106: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 64
	i64 6554405243736097249, ; 107: Xamarin.GooglePlayServices.Stats => 0x5af5ecd7aad901e1 => 122
	i64 6591024623626361694, ; 108: System.Web.Services.dll => 0x5b7805f9751a1b5e => 134
	i64 6659513131007730089, ; 109: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 70
	i64 6710414900318471453, ; 110: System.Reactive.Interfaces.dll => 0x5d202ecc6cf8851d => 37
	i64 6876862101832370452, ; 111: System.Xml.Linq => 0x5f6f85a57d108914 => 43
	i64 6878582369430612696, ; 112: Xamarin.Google.Android.DataTransport.TransportRuntime.dll => 0x5f75a238802d2ad8 => 115
	i64 6894844156784520562, ; 113: System.Numerics.Vectors => 0x5faf683aead1ad72 => 35
	i64 6975328107116786489, ; 114: Xamarin.Firebase.Annotations => 0x60cd57f4e07e7339 => 100
	i64 7036436454368433159, ; 115: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x61a671acb33d5407 => 72
	i64 7046697327704092548, ; 116: System.Reactive.Interfaces => 0x61cae5e2717f2f84 => 37
	i64 7103753931438454322, ; 117: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 69
	i64 7141577505875122296, ; 118: System.Runtime.InteropServices.WindowsRuntime.dll => 0x631bfae7659b5878 => 10
	i64 7270811800166795866, ; 119: System.Linq => 0x64e71ccf51a90a5a => 138
	i64 7338192458477945005, ; 120: System.Reflection => 0x65d67f295d0740ad => 137
	i64 7385250113861300937, ; 121: Xamarin.Firebase.Iid.Interop.dll => 0x667dadd98e1db2c9 => 104
	i64 7488575175965059935, ; 122: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 43
	i64 7635363394907363464, ; 123: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 109
	i64 7637365915383206639, ; 124: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 99
	i64 7654504624184590948, ; 125: System.Net.Http => 0x6a3a4366801b8264 => 33
	i64 7820441508502274321, ; 126: System.Data => 0x6c87ca1e14ff8111 => 127
	i64 7836164640616011524, ; 127: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 50
	i64 7904570928025870493, ; 128: Xamarin.Firebase.Installations => 0x6db2ad60fadca09d => 105
	i64 7940488133782528123, ; 129: Xamarin.GooglePlayServices.CloudMessaging => 0x6e3247e31d4fe07b => 121
	i64 7969431548154767168, ; 130: Xamarin.Firebase.Installations.dll => 0x6e991bc4e98e6740 => 105
	i64 8044118961405839122, ; 131: System.ComponentModel.Composition => 0x6fa2739369944712 => 133
	i64 8064050204834738623, ; 132: System.Collections.dll => 0x6fe942efa61731bf => 8
	i64 8083354569033831015, ; 133: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 73
	i64 8101777744205214367, ; 134: Xamarin.Android.Support.Annotations => 0x706f4beeec84729f => 44
	i64 8103644804370223335, ; 135: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 129
	i64 8167236081217502503, ; 136: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 14
	i64 8185542183669246576, ; 137: System.Collections => 0x7198e33f4794aa70 => 8
	i64 8290740647658429042, ; 138: System.Runtime.Extensions => 0x730ea0b15c929a72 => 136
	i64 8398329775253868912, ; 139: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 59
	i64 8400357532724379117, ; 140: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 85
	i64 8465511506719290632, ; 141: Xamarin.Firebase.Messaging.dll => 0x757b89dcf7fc3508 => 108
	i64 8470680757392014285, ; 142: System.Reactive.Linq => 0x758de744ee167bcd => 38
	i64 8562358305470590539, ; 143: System.Reactive.PlatformServices.dll => 0x76d39b837530ae4b => 39
	i64 8601935802264776013, ; 144: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 93
	i64 8626175481042262068, ; 145: Java.Interop => 0x77b654e585b55834 => 14
	i64 8639588376636138208, ; 146: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 84
	i64 8684531736582871431, ; 147: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 132
	i64 9020037700568894461, ; 148: System.Reactive.Core => 0x7d2d9c7f9b0a4bfd => 36
	i64 9312692141327339315, ; 149: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 98
	i64 9324707631942237306, ; 150: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 51
	i64 9419392115832876195, ; 151: System.Reactive.PlatformServices => 0x82b8673928556ca3 => 39
	i64 9662334977499516867, ; 152: System.Numerics.dll => 0x8617827802b0cfc3 => 34
	i64 9678050649315576968, ; 153: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 61
	i64 9711637524876806384, ; 154: Xamarin.AndroidX.Media.dll => 0x86c6aadfd9a2c8f0 => 81
	i64 9774216967140627647, ; 155: Xamarin.Firebase.Datatransport.dll => 0x87a4fe8bac0354bf => 103
	i64 9796610708422913120, ; 156: Xamarin.Firebase.Iid.Interop => 0x87f48d88de55ec60 => 104
	i64 9808709177481450983, ; 157: Mono.Android.dll => 0x881f890734e555e7 => 17
	i64 9825649861376906464, ; 158: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 58
	i64 9834056768316610435, ; 159: System.Transactions.dll => 0x8879968718899783 => 128
	i64 9875200773399460291, ; 160: Xamarin.GooglePlayServices.Base.dll => 0x890bc2c8482339c3 => 119
	i64 9998632235833408227, ; 161: Mono.Security => 0x8ac2470b209ebae3 => 135
	i64 10038780035334861115, ; 162: System.Net.Http.dll => 0x8b50e941206af13b => 33
	i64 10229024438826829339, ; 163: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 64
	i64 10352330178246763130, ; 164: Xamarin.Firebase.Measurement.Connector => 0x8faadd72b7f4627a => 107
	i64 10356046837970154573, ; 165: Alarma.Android => 0x8fb811bafe84b44d => 0
	i64 10376576884623852283, ; 166: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 92
	i64 10430153318873392755, ; 167: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 62
	i64 10566960649245365243, ; 168: System.Globalization.dll => 0x92a562b96dcd13fb => 6
	i64 10714184849103829812, ; 169: System.Runtime.Extensions.dll => 0x94b06e5aa4b4bb34 => 136
	i64 10847732767863316357, ; 170: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 52
	i64 11023048688141570732, ; 171: System.Core => 0x98f9bc61168392ac => 30
	i64 11037814507248023548, ; 172: System.Xml => 0x992e31d0412bf7fc => 42
	i64 11162124722117608902, ; 173: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 97
	i64 11171845786728836392, ; 174: Xamarin.GooglePlayServices.CloudMessaging.dll => 0x9b0a5e8d536aad28 => 121
	i64 11336891506707244397, ; 175: Xamarin.Firebase.Datatransport => 0x9d54bac28a6da56d => 103
	i64 11340910727871153756, ; 176: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 63
	i64 11376351552967644903, ; 177: Xamarin.Firebase.Annotations.dll => 0x9de0eb76829996e7 => 100
	i64 11376461258732682436, ; 178: Xamarin.Android.Support.Compat => 0x9de14f3d5fc13cc4 => 45
	i64 11392833485892708388, ; 179: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 87
	i64 11529969570048099689, ; 180: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 97
	i64 11578238080964724296, ; 181: Xamarin.AndroidX.Legacy.Support.V4 => 0xa0ae2a30c4cd8648 => 72
	i64 11580057168383206117, ; 182: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 48
	i64 11597940890313164233, ; 183: netstandard => 0xa0f429ca8d1805c9 => 126
	i64 11672361001936329215, ; 184: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 69
	i64 11739066727115742305, ; 185: SQLite-net.dll => 0xa2e98afdf8575c61 => 24
	i64 11743665907891708234, ; 186: System.Threading.Tasks => 0xa2f9e1ec30c0214a => 2
	i64 11806260347154423189, ; 187: SQLite-net => 0xa3d8433bc5eb5d95 => 24
	i64 11855946309386773903, ; 188: Xamarin.Google.Dagger => 0xa488c85a571a258f => 117
	i64 12102847907131387746, ; 189: System.Buffers => 0xa7f5f40c43256f62 => 29
	i64 12137774235383566651, ; 190: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 95
	i64 12180862106135531122, ; 191: Alarma.Android.dll => 0xa90b1d8c6e398e72 => 0
	i64 12220938475036508228, ; 192: Matcha.BackgroundService.Droid.dll => 0xa9997ecb32748044 => 16
	i64 12279246230491828964, ; 193: SQLitePCLRaw.provider.e_sqlite3.dll => 0xaa68a5636e0512e4 => 28
	i64 12346958216201575315, ; 194: Xamarin.JavaX.Inject.dll => 0xab593514a5491b93 => 124
	i64 12414299427252656003, ; 195: Xamarin.Android.Support.Compat.dll => 0xac48738e28bad783 => 45
	i64 12430217994517923388, ; 196: Alarma => 0xac8101686be8c63c => 12
	i64 12451044538927396471, ; 197: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 68
	i64 12466513435562512481, ; 198: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 79
	i64 12487638416075308985, ; 199: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 65
	i64 12501328358063843848, ; 200: Plugin.Geolocator.dll => 0xad7da3e822e9aa08 => 21
	i64 12538491095302438457, ; 201: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 56
	i64 12550732019250633519, ; 202: System.IO.Compression => 0xae2d28465e8e1b2f => 131
	i64 12700543734426720211, ; 203: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 57
	i64 12952608645614506925, ; 204: Xamarin.Android.Support.Core.Utils => 0xb3c0e8eff48193ad => 46
	i64 12963446364377008305, ; 205: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 130
	i64 13032622942553887878, ; 206: Matcha.BackgroundService => 0xb4dd2d843687d486 => 15
	i64 13370592475155966277, ; 207: System.Runtime.Serialization => 0xb98de304062ea945 => 11
	i64 13401370062847626945, ; 208: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 95
	i64 13404347523447273790, ; 209: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 59
	i64 13454009404024712428, ; 210: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 118
	i64 13491513212026656886, ; 211: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 53
	i64 13572454107664307259, ; 212: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 88
	i64 13643785327914841093, ; 213: Plugin.Media.dll => 0xbd587677c60cf405 => 22
	i64 13647894001087880694, ; 214: System.Data.dll => 0xbd670f48cb071df6 => 127
	i64 13702626353344114072, ; 215: System.Diagnostics.Tools.dll => 0xbe29821198fb6d98 => 4
	i64 13829530607229561650, ; 216: Xamarin.Firebase.Installations.InterOp => 0xbfec5cd0b64f6b32 => 106
	i64 13959074834287824816, ; 217: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 68
	i64 13967638549803255703, ; 218: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 110
	i64 14124974489674258913, ; 219: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 56
	i64 14125464355221830302, ; 220: System.Threading.dll => 0xc407bafdbc707a9e => 3
	i64 14172845254133543601, ; 221: Xamarin.AndroidX.MultiDex => 0xc4b00faaed35f2b1 => 82
	i64 14261073672896646636, ; 222: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 87
	i64 14327695147300244862, ; 223: System.Reflection.dll => 0xc6d632d338eb4d7e => 137
	i64 14486659737292545672, ; 224: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 75
	i64 14524915121004231475, ; 225: Xamarin.JavaX.Inject => 0xc992dd58a4283b33 => 124
	i64 14644440854989303794, ; 226: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 80
	i64 14789919016435397935, ; 227: Xamarin.Firebase.Common.dll => 0xcd4058fc2f6d352f => 101
	i64 14792063746108907174, ; 228: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 118
	i64 14809388726477333247, ; 229: Xamarin.GooglePlayServices.Stats.dll => 0xcd8584954e5b22ff => 122
	i64 14852515768018889994, ; 230: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 63
	i64 14987728460634540364, ; 231: System.IO.Compression.dll => 0xcfff1ba06622494c => 131
	i64 14988210264188246988, ; 232: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 65
	i64 15133485256822086103, ; 233: System.Linq.dll => 0xd204f0a9127dd9d7 => 138
	i64 15370334346939861994, ; 234: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 62
	i64 15582737692548360875, ; 235: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 78
	i64 15609085926864131306, ; 236: System.dll => 0xd89e9cf3334914ea => 31
	i64 15777549416145007739, ; 237: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 90
	i64 15810740023422282496, ; 238: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 112
	i64 15817206913877585035, ; 239: System.Threading.Tasks.dll => 0xdb8201e29086ac8b => 2
	i64 15930129725311349754, ; 240: Xamarin.GooglePlayServices.Tasks.dll => 0xdd1330956f12f3fa => 123
	i64 16154507427712707110, ; 241: System => 0xe03056ea4e39aa26 => 31
	i64 16266187189082433806, ; 242: System.Reactive.Core.dll => 0xe1bd1b110744a90e => 36
	i64 16467346005009053642, ; 243: Xamarin.Google.Android.DataTransport.TransportApi => 0xe487c3f19e0337ca => 113
	i64 16565028646146589191, ; 244: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 133
	i64 16621146507174665210, ; 245: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 60
	i64 16677317093839702854, ; 246: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 85
	i64 16755018182064898362, ; 247: SQLitePCLRaw.core.dll => 0xe885c843c330813a => 26
	i64 16822611501064131242, ; 248: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 129
	i64 16833383113903931215, ; 249: mscorlib => 0xe99c30c1484d7f4f => 18
	i64 16866861824412579935, ; 250: System.Runtime.InteropServices.WindowsRuntime => 0xea132176ffb5785f => 10
	i64 16895806301542741427, ; 251: Plugin.Permissions => 0xea79f6503d42f5b3 => 23
	i64 16932527889823454152, ; 252: Xamarin.Android.Support.Core.Utils.dll => 0xeafc6c67465253c8 => 46
	i64 17024911836938395553, ; 253: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 49
	i64 17031351772568316411, ; 254: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 83
	i64 17037200463775726619, ; 255: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 71
	i64 17434242208926550937, ; 256: Xamarin.Google.Android.DataTransport.TransportRuntime => 0xf1f2deeb1f304b99 => 115
	i64 17475612250781254388, ; 257: Matcha.BackgroundService.dll => 0xf285d8c0984802f4 => 15
	i64 17544493274320527064, ; 258: Xamarin.AndroidX.AsyncLayoutInflater => 0xf37a8fada41aded8 => 54
	i64 17627500474728259406, ; 259: System.Globalization => 0xf4a176498a351f4e => 6
	i64 17677828421478984182, ; 260: Xamarin.Firebase.Installations.InterOp.dll => 0xf5544349c68f29f6 => 106
	i64 17685921127322830888, ; 261: System.Diagnostics.Debug.dll => 0xf571038fafa74828 => 5
	i64 17704177640604968747, ; 262: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 79
	i64 17710060891934109755, ; 263: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 77
	i64 17786996386789405829, ; 264: Plugin.Geolocator => 0xf6d81af967bd3485 => 21
	i64 17838668724098252521, ; 265: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 29
	i64 17882897186074144999, ; 266: FormsViewGroup => 0xf82cd03e3ac830e7 => 13
	i64 17892495832318972303, ; 267: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 112
	i64 17928294245072900555, ; 268: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 132
	i64 17945795017270165205, ; 269: Xamarin.Google.Android.DataTransport.TransportApi.dll => 0xf90c457cc05cfed5 => 113
	i64 17986907704309214542, ; 270: Xamarin.GooglePlayServices.Basement.dll => 0xf99e554223166d4e => 120
	i64 18025913125965088385, ; 271: System.Threading => 0xfa28e87b91334681 => 3
	i64 18116111925905154859, ; 272: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 53
	i64 18121036031235206392, ; 273: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 83
	i64 18129453464017766560, ; 274: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 125
	i64 18245806341561545090, ; 275: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 7
	i64 18305135509493619199, ; 276: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 84
	i64 18337470502355292274, ; 277: Xamarin.Firebase.Messaging => 0xfe7bc8440c175072 => 108
	i64 18370042311372477656, ; 278: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0xfeef80274e4094d8 => 27
	i64 18380184030268848184 ; 279: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 96
], align 16
@assembly_image_cache_indices = local_unnamed_addr constant [280 x i32] [
	i32 67, i32 12, i32 17, i32 139, i32 57, i32 89, i32 90, i32 76, ; 0..7
	i32 119, i32 130, i32 70, i32 9, i32 27, i32 66, i32 128, i32 111, ; 8..15
	i32 135, i32 116, i32 26, i32 52, i32 23, i32 11, i32 102, i32 28, ; 16..23
	i32 50, i32 78, i32 71, i32 19, i32 32, i32 51, i32 89, i32 114, ; 24..31
	i32 48, i32 77, i32 19, i32 82, i32 55, i32 66, i32 134, i32 7, ; 32..39
	i32 74, i32 40, i32 61, i32 94, i32 41, i32 47, i32 42, i32 18, ; 40..47
	i32 86, i32 40, i32 20, i32 109, i32 116, i32 73, i32 49, i32 35, ; 48..55
	i32 101, i32 120, i32 92, i32 91, i32 34, i32 41, i32 20, i32 126, ; 56..63
	i32 88, i32 67, i32 4, i32 32, i32 9, i32 139, i32 123, i32 114, ; 64..71
	i32 25, i32 117, i32 125, i32 96, i32 102, i32 54, i32 47, i32 91, ; 72..79
	i32 1, i32 1, i32 110, i32 22, i32 99, i32 80, i32 38, i32 16, ; 80..87
	i32 81, i32 94, i32 93, i32 5, i32 60, i32 30, i32 98, i32 58, ; 88..95
	i32 44, i32 86, i32 75, i32 111, i32 13, i32 107, i32 25, i32 76, ; 96..103
	i32 74, i32 55, i32 64, i32 122, i32 134, i32 70, i32 37, i32 43, ; 104..111
	i32 115, i32 35, i32 100, i32 72, i32 37, i32 69, i32 10, i32 138, ; 112..119
	i32 137, i32 104, i32 43, i32 109, i32 99, i32 33, i32 127, i32 50, ; 120..127
	i32 105, i32 121, i32 105, i32 133, i32 8, i32 73, i32 44, i32 129, ; 128..135
	i32 14, i32 8, i32 136, i32 59, i32 85, i32 108, i32 38, i32 39, ; 136..143
	i32 93, i32 14, i32 84, i32 132, i32 36, i32 98, i32 51, i32 39, ; 144..151
	i32 34, i32 61, i32 81, i32 103, i32 104, i32 17, i32 58, i32 128, ; 152..159
	i32 119, i32 135, i32 33, i32 64, i32 107, i32 0, i32 92, i32 62, ; 160..167
	i32 6, i32 136, i32 52, i32 30, i32 42, i32 97, i32 121, i32 103, ; 168..175
	i32 63, i32 100, i32 45, i32 87, i32 97, i32 72, i32 48, i32 126, ; 176..183
	i32 69, i32 24, i32 2, i32 24, i32 117, i32 29, i32 95, i32 0, ; 184..191
	i32 16, i32 28, i32 124, i32 45, i32 12, i32 68, i32 79, i32 65, ; 192..199
	i32 21, i32 56, i32 131, i32 57, i32 46, i32 130, i32 15, i32 11, ; 200..207
	i32 95, i32 59, i32 118, i32 53, i32 88, i32 22, i32 127, i32 4, ; 208..215
	i32 106, i32 68, i32 110, i32 56, i32 3, i32 82, i32 87, i32 137, ; 216..223
	i32 75, i32 124, i32 80, i32 101, i32 118, i32 122, i32 63, i32 131, ; 224..231
	i32 65, i32 138, i32 62, i32 78, i32 31, i32 90, i32 112, i32 2, ; 232..239
	i32 123, i32 31, i32 36, i32 113, i32 133, i32 60, i32 85, i32 26, ; 240..247
	i32 129, i32 18, i32 10, i32 23, i32 46, i32 49, i32 83, i32 71, ; 248..255
	i32 115, i32 15, i32 54, i32 6, i32 106, i32 5, i32 79, i32 77, ; 256..263
	i32 21, i32 29, i32 13, i32 112, i32 132, i32 113, i32 120, i32 3, ; 264..271
	i32 53, i32 83, i32 125, i32 7, i32 84, i32 108, i32 27, i32 96 ; 280..279
], align 16

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 8
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 16; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}
