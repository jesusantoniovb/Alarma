; ModuleID = 'obj\Debug\100\android\marshal_methods.x86.ll'
source_filename = "obj\Debug\100\android\marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android"


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
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [280 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 76
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 118
	i32 39109920, ; 2: Newtonsoft.Json.dll => 0x254c520 => 19
	i32 39852199, ; 3: Plugin.Permissions => 0x26018a7 => 23
	i32 57263871, ; 4: Xamarin.Forms.Core.dll => 0x369c6ff => 109
	i32 101534019, ; 5: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 90
	i32 103834273, ; 6: Xamarin.Firebase.Annotations.dll => 0x63062a1 => 100
	i32 120558881, ; 7: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 90
	i32 165246403, ; 8: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 57
	i32 166922606, ; 9: Xamarin.Android.Support.Compat.dll => 0x9f3096e => 45
	i32 182336117, ; 10: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 91
	i32 205061960, ; 11: System.ComponentModel => 0xc38ff48 => 9
	i32 209399409, ; 12: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 55
	i32 220171995, ; 13: System.Diagnostics.Debug => 0xd1f8edb => 5
	i32 230216969, ; 14: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 71
	i32 231814094, ; 15: System.Globalization => 0xdd133ce => 6
	i32 232815796, ; 16: System.Web.Services => 0xde07cb4 => 134
	i32 261689757, ; 17: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 60
	i32 278686392, ; 18: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 75
	i32 280482487, ; 19: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 69
	i32 318968648, ; 20: Xamarin.AndroidX.Activity.dll => 0x13031348 => 47
	i32 321597661, ; 21: System.Numerics => 0x132b30dd => 34
	i32 342366114, ; 22: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 73
	i32 347068432, ; 23: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 27
	i32 385762202, ; 24: System.Memory.dll => 0x16fe439a => 32
	i32 441335492, ; 25: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 59
	i32 442521989, ; 26: Xamarin.Essentials => 0x1a605985 => 99
	i32 442565967, ; 27: System.Collections => 0x1a61054f => 8
	i32 450948140, ; 28: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 68
	i32 465846621, ; 29: mscorlib => 0x1bc4415d => 18
	i32 469710990, ; 30: System.dll => 0x1bff388e => 31
	i32 476646585, ; 31: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 69
	i32 485140951, ; 32: Xamarin.Google.Android.DataTransport.TransportRuntime => 0x1ceaa9d7 => 115
	i32 486930444, ; 33: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 80
	i32 495452658, ; 34: Xamarin.Google.Android.DataTransport.TransportRuntime.dll => 0x1d8801f2 => 115
	i32 507148113, ; 35: Xamarin.Google.Android.DataTransport.TransportApi.dll => 0x1e3a7751 => 113
	i32 514659665, ; 36: Xamarin.Android.Support.Compat => 0x1ead1551 => 45
	i32 526420162, ; 37: System.Transactions.dll => 0x1f6088c2 => 128
	i32 542030372, ; 38: Xamarin.GooglePlayServices.Stats => 0x204eba24 => 122
	i32 545304856, ; 39: System.Runtime.Extensions => 0x2080b118 => 136
	i32 605376203, ; 40: System.IO.Compression.FileSystem => 0x24154ecb => 132
	i32 627609679, ; 41: Xamarin.AndroidX.CustomView => 0x2568904f => 64
	i32 662365150, ; 42: Alarma.Android.dll => 0x277ae3de => 0
	i32 663517072, ; 43: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 96
	i32 666292255, ; 44: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 52
	i32 672442732, ; 45: System.Collections.Concurrent => 0x2814a96c => 7
	i32 690569205, ; 46: System.Xml.Linq.dll => 0x29293ff5 => 43
	i32 692692150, ; 47: Xamarin.Android.Support.Annotations => 0x2949a4b6 => 44
	i32 748832960, ; 48: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 25
	i32 775507847, ; 49: System.IO.Compression => 0x2e394f87 => 131
	i32 809851609, ; 50: System.Drawing.Common.dll => 0x30455ad9 => 130
	i32 831745141, ; 51: System.Reactive.Linq => 0x31936c75 => 38
	i32 843511501, ; 52: Xamarin.AndroidX.Print => 0x3246f6cd => 87
	i32 846667644, ; 53: Xamarin.Firebase.Installations.dll => 0x32771f7c => 105
	i32 877678880, ; 54: System.Globalization.dll => 0x34505120 => 6
	i32 882434999, ; 55: Xamarin.Firebase.Installations.InterOp.dll => 0x3498e3b7 => 106
	i32 928116545, ; 56: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 118
	i32 955402788, ; 57: Newtonsoft.Json => 0x38f24a24 => 19
	i32 957807352, ; 58: Plugin.CurrentActivity => 0x3916faf8 => 20
	i32 967690846, ; 59: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 73
	i32 974778368, ; 60: FormsViewGroup.dll => 0x3a19f000 => 13
	i32 987214855, ; 61: System.Diagnostics.Tools => 0x3ad7b407 => 4
	i32 992768348, ; 62: System.Collections.dll => 0x3b2c715c => 8
	i32 996733531, ; 63: Xamarin.Google.Android.DataTransport.TransportBackendCct => 0x3b68f25b => 114
	i32 1012816738, ; 64: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 89
	i32 1035644815, ; 65: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 51
	i32 1036359102, ; 66: Xamarin.GooglePlayServices.CloudMessaging.dll => 0x3dc595be => 121
	i32 1042160112, ; 67: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 111
	i32 1044663988, ; 68: System.Linq.Expressions.dll => 0x3e444eb4 => 139
	i32 1052210849, ; 69: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 77
	i32 1098259244, ; 70: System => 0x41761b2c => 31
	i32 1104002344, ; 71: Plugin.Media => 0x41cdbd28 => 22
	i32 1137654822, ; 72: Plugin.Permissions.dll => 0x43cf3c26 => 23
	i32 1141947663, ; 73: Xamarin.Firebase.Measurement.Connector.dll => 0x4410bd0f => 107
	i32 1175144683, ; 74: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 94
	i32 1178241025, ; 75: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 84
	i32 1204270330, ; 76: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 52
	i32 1267360935, ; 77: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 95
	i32 1282958517, ; 78: Plugin.Geolocator => 0x4c7864b5 => 21
	i32 1292207520, ; 79: SQLitePCLRaw.core.dll => 0x4d0585a0 => 26
	i32 1293217323, ; 80: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 66
	i32 1324164729, ; 81: System.Linq => 0x4eed2679 => 138
	i32 1333047053, ; 82: Xamarin.Firebase.Common => 0x4f74af0d => 101
	i32 1365406463, ; 83: System.ServiceModel.Internals.dll => 0x516272ff => 125
	i32 1376866003, ; 84: Xamarin.AndroidX.SavedState => 0x52114ed3 => 89
	i32 1379779777, ; 85: System.Resources.ResourceManager => 0x523dc4c1 => 1
	i32 1379897097, ; 86: Xamarin.JavaX.Inject => 0x523f8f09 => 124
	i32 1395857551, ; 87: Xamarin.AndroidX.Media.dll => 0x5333188f => 81
	i32 1406073936, ; 88: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 61
	i32 1411638395, ; 89: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 40
	i32 1453312822, ; 90: System.Diagnostics.Tools.dll => 0x569fcb36 => 4
	i32 1457743152, ; 91: System.Runtime.Extensions.dll => 0x56e36530 => 136
	i32 1460219004, ; 92: Xamarin.Forms.Xaml => 0x57092c7c => 112
	i32 1462112819, ; 93: System.IO.Compression.dll => 0x57261233 => 131
	i32 1469204771, ; 94: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 50
	i32 1528512243, ; 95: Matcha.BackgroundService => 0x5b1b3ef3 => 15
	i32 1531040989, ; 96: Xamarin.Firebase.Iid.Interop.dll => 0x5b41d4dd => 104
	i32 1548710267, ; 97: Matcha.BackgroundService.dll => 0x5c4f717b => 15
	i32 1574652163, ; 98: Xamarin.Android.Support.Core.Utils.dll => 0x5ddb4903 => 46
	i32 1582372066, ; 99: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 65
	i32 1592978981, ; 100: System.Runtime.Serialization.dll => 0x5ef2ee25 => 11
	i32 1622152042, ; 101: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 79
	i32 1624863272, ; 102: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 98
	i32 1636350590, ; 103: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 63
	i32 1639515021, ; 104: System.Net.Http.dll => 0x61b9038d => 33
	i32 1657153582, ; 105: System.Runtime => 0x62c6282e => 41
	i32 1658241508, ; 106: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 92
	i32 1658251792, ; 107: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 116
	i32 1670060433, ; 108: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 60
	i32 1671064124, ; 109: Alarma => 0x639a6a3c => 12
	i32 1701541528, ; 110: System.Diagnostics.Debug.dll => 0x656b7698 => 5
	i32 1711441057, ; 111: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 27
	i32 1726116996, ; 112: System.Reflection.dll => 0x66e27484 => 137
	i32 1729485958, ; 113: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 56
	i32 1766324549, ; 114: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 91
	i32 1776026572, ; 115: System.Core.dll => 0x69dc03cc => 30
	i32 1788241197, ; 116: Xamarin.AndroidX.Fragment => 0x6a96652d => 68
	i32 1808609942, ; 117: Xamarin.AndroidX.Loader => 0x6bcd3296 => 79
	i32 1813201214, ; 118: Xamarin.Google.Android.Material => 0x6c13413e => 116
	i32 1818569960, ; 119: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 85
	i32 1858542181, ; 120: System.Linq.Expressions => 0x6ec71a65 => 139
	i32 1867746548, ; 121: Xamarin.Essentials.dll => 0x6f538cf4 => 99
	i32 1878053835, ; 122: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 112
	i32 1885316902, ; 123: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 53
	i32 1900610850, ; 124: System.Resources.ResourceManager.dll => 0x71490522 => 1
	i32 1904755420, ; 125: System.Runtime.InteropServices.WindowsRuntime.dll => 0x718842dc => 10
	i32 1908813208, ; 126: Xamarin.GooglePlayServices.Basement => 0x71c62d98 => 120
	i32 1919157823, ; 127: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 82
	i32 1933215285, ; 128: Xamarin.Firebase.Messaging.dll => 0x733a8635 => 108
	i32 2011961780, ; 129: System.Buffers.dll => 0x77ec19b4 => 29
	i32 2019465201, ; 130: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 77
	i32 2048185678, ; 131: Plugin.Media.dll => 0x7a14d54e => 22
	i32 2055257422, ; 132: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 74
	i32 2079903147, ; 133: System.Runtime.dll => 0x7bf8cdab => 41
	i32 2090596640, ; 134: System.Numerics.Vectors => 0x7c9bf920 => 35
	i32 2097448633, ; 135: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 70
	i32 2103459038, ; 136: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 28
	i32 2124230737, ; 137: Xamarin.Google.Android.DataTransport.TransportBackendCct.dll => 0x7e9d3051 => 114
	i32 2126786730, ; 138: Xamarin.Forms.Platform.Android => 0x7ec430aa => 110
	i32 2129483829, ; 139: Xamarin.GooglePlayServices.Base.dll => 0x7eed5835 => 119
	i32 2166116741, ; 140: Xamarin.Android.Support.Core.Utils => 0x811c5185 => 46
	i32 2174878672, ; 141: Xamarin.Firebase.Annotations => 0x81a203d0 => 100
	i32 2201231467, ; 142: System.Net.Http => 0x8334206b => 33
	i32 2217644978, ; 143: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 94
	i32 2244775296, ; 144: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 80
	i32 2256548716, ; 145: Xamarin.AndroidX.MultiDex => 0x8680336c => 82
	i32 2261435625, ; 146: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 72
	i32 2279755925, ; 147: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 88
	i32 2292630417, ; 148: System.Reactive.PlatformServices.dll => 0x88a6c391 => 39
	i32 2303054758, ; 149: System.Reactive.Interfaces.dll => 0x8945d3a6 => 37
	i32 2315684594, ; 150: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 48
	i32 2319330481, ; 151: Matcha.BackgroundService.Droid.dll => 0x8a3e2cb1 => 16
	i32 2321843949, ; 152: Matcha.BackgroundService.Droid => 0x8a6486ed => 16
	i32 2409053734, ; 153: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 86
	i32 2465273461, ; 154: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 25
	i32 2465532216, ; 155: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 59
	i32 2471841756, ; 156: netstandard.dll => 0x93554fdc => 126
	i32 2475788418, ; 157: Java.Interop.dll => 0x93918882 => 14
	i32 2483661569, ; 158: Xamarin.Firebase.Measurement.Connector => 0x9409ab01 => 107
	i32 2483742551, ; 159: Xamarin.Firebase.Messaging => 0x940ae757 => 108
	i32 2486410006, ; 160: Xamarin.GooglePlayServices.CloudMessaging => 0x94339b16 => 121
	i32 2501346920, ; 161: System.Data.DataSetExtensions => 0x95178668 => 129
	i32 2505896520, ; 162: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 76
	i32 2581819634, ; 163: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 95
	i32 2593964533, ; 164: Xamarin.Google.Dagger => 0x9a9cc1f5 => 117
	i32 2620871830, ; 165: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 63
	i32 2623491480, ; 166: Xamarin.Firebase.Installations.InterOp => 0x9c5f4d98 => 106
	i32 2624644809, ; 167: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 67
	i32 2633051222, ; 168: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 75
	i32 2701096212, ; 169: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 92
	i32 2715334215, ; 170: System.Threading.Tasks.dll => 0xa1d8b647 => 2
	i32 2732626843, ; 171: Xamarin.AndroidX.Activity => 0xa2e0939b => 47
	i32 2737747696, ; 172: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 50
	i32 2766581644, ; 173: Xamarin.Forms.Core => 0xa4e6af8c => 109
	i32 2772412848, ; 174: Xamarin.Google.Dagger.dll => 0xa53fa9b0 => 117
	i32 2778768386, ; 175: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 97
	i32 2804607052, ; 176: Xamarin.Firebase.Components.dll => 0xa72ae84c => 102
	i32 2806986428, ; 177: Plugin.CurrentActivity.dll => 0xa74f36bc => 20
	i32 2810250172, ; 178: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 61
	i32 2819470561, ; 179: System.Xml.dll => 0xa80db4e1 => 42
	i32 2847418871, ; 180: Xamarin.GooglePlayServices.Base => 0xa9b829f7 => 119
	i32 2853208004, ; 181: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 97
	i32 2855708567, ; 182: Xamarin.AndroidX.Transition => 0xaa36a797 => 93
	i32 2883826422, ; 183: Xamarin.Firebase.Installations => 0xabe3b2f6 => 105
	i32 2901442782, ; 184: System.Reflection => 0xacf080de => 137
	i32 2903344695, ; 185: System.ComponentModel.Composition => 0xad0d8637 => 133
	i32 2905242038, ; 186: mscorlib.dll => 0xad2a79b6 => 18
	i32 2914202368, ; 187: Xamarin.Firebase.Iid.Interop => 0xadb33300 => 104
	i32 2916838712, ; 188: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 98
	i32 2919462931, ; 189: System.Numerics.Vectors.dll => 0xae037813 => 35
	i32 2921128767, ; 190: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 49
	i32 2959614098, ; 191: System.ComponentModel.dll => 0xb0682092 => 9
	i32 2978675010, ; 192: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 66
	i32 3024354802, ; 193: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 71
	i32 3044182254, ; 194: FormsViewGroup => 0xb57288ee => 13
	i32 3057625584, ; 195: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 83
	i32 3058099980, ; 196: Xamarin.GooglePlayServices.Tasks => 0xb646e70c => 123
	i32 3071899978, ; 197: Xamarin.Firebase.Common.dll => 0xb719794a => 101
	i32 3075834255, ; 198: System.Threading.Tasks => 0xb755818f => 2
	i32 3106737866, ; 199: Xamarin.Firebase.Datatransport.dll => 0xb92d0eca => 103
	i32 3111772706, ; 200: System.Runtime.Serialization => 0xb979e222 => 11
	i32 3126016514, ; 201: Plugin.Geolocator.dll => 0xba533a02 => 21
	i32 3155362983, ; 202: Xamarin.Google.Android.DataTransport.TransportApi => 0xbc1304a7 => 113
	i32 3204380047, ; 203: System.Data.dll => 0xbefef58f => 127
	i32 3211777861, ; 204: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 65
	i32 3220365878, ; 205: System.Threading => 0xbff2e236 => 3
	i32 3230466174, ; 206: Xamarin.GooglePlayServices.Basement.dll => 0xc08d007e => 120
	i32 3247949154, ; 207: Mono.Security => 0xc197c562 => 135
	i32 3258312781, ; 208: Xamarin.AndroidX.CardView => 0xc235e84d => 56
	i32 3267021929, ; 209: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 54
	i32 3282591531, ; 210: System.Reactive.Interfaces => 0xc3a85f2b => 37
	i32 3286872994, ; 211: SQLite-net.dll => 0xc3e9b3a2 => 24
	i32 3299378109, ; 212: Alarma.Android => 0xc4a883bd => 0
	i32 3300173928, ; 213: System.Reactive.Core => 0xc4b4a868 => 36
	i32 3317135071, ; 214: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 64
	i32 3317144872, ; 215: System.Data => 0xc5b79d28 => 127
	i32 3331531814, ; 216: Xamarin.GooglePlayServices.Stats.dll => 0xc6932426 => 122
	i32 3340431453, ; 217: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 53
	i32 3346324047, ; 218: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 84
	i32 3353484488, ; 219: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 70
	i32 3360279109, ; 220: SQLitePCLRaw.core => 0xc849ca45 => 26
	i32 3362522851, ; 221: Xamarin.AndroidX.Core => 0xc86c06e3 => 62
	i32 3366347497, ; 222: Java.Interop => 0xc8a662e9 => 14
	i32 3374999561, ; 223: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 88
	i32 3395150330, ; 224: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 40
	i32 3404865022, ; 225: System.ServiceModel.Internals => 0xcaf21dfe => 125
	i32 3425410982, ; 226: System.Reactive.Core.dll => 0xcc2b9fa6 => 36
	i32 3429136800, ; 227: System.Xml => 0xcc6479a0 => 42
	i32 3430777524, ; 228: netstandard => 0xcc7d82b4 => 126
	i32 3439690031, ; 229: Xamarin.Android.Support.Annotations.dll => 0xcd05812f => 44
	i32 3441283291, ; 230: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 67
	i32 3476120550, ; 231: Mono.Android => 0xcf3163e6 => 17
	i32 3479217239, ; 232: Alarma.dll => 0xcf60a457 => 12
	i32 3486566296, ; 233: System.Transactions => 0xcfd0c798 => 128
	i32 3493954962, ; 234: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 58
	i32 3501239056, ; 235: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 54
	i32 3509114376, ; 236: System.Xml.Linq => 0xd128d608 => 43
	i32 3536029504, ; 237: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 110
	i32 3567349600, ; 238: System.ComponentModel.Composition.dll => 0xd4a16f60 => 133
	i32 3608519521, ; 239: System.Linq.dll => 0xd715a361 => 138
	i32 3618140916, ; 240: Xamarin.AndroidX.Preference => 0xd7a872f4 => 86
	i32 3627220390, ; 241: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 87
	i32 3632359727, ; 242: Xamarin.Forms.Platform => 0xd881692f => 111
	i32 3633644679, ; 243: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 49
	i32 3641597786, ; 244: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 74
	i32 3672681054, ; 245: Mono.Android.dll => 0xdae8aa5e => 17
	i32 3676310014, ; 246: System.Web.Services.dll => 0xdb2009fe => 134
	i32 3682565725, ; 247: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 55
	i32 3684561358, ; 248: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 58
	i32 3684933406, ; 249: System.Runtime.InteropServices.WindowsRuntime => 0xdba39f1e => 10
	i32 3689375977, ; 250: System.Drawing.Common => 0xdbe768e9 => 130
	i32 3718780102, ; 251: Xamarin.AndroidX.Annotation => 0xdda814c6 => 48
	i32 3724971120, ; 252: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 83
	i32 3754567612, ; 253: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 28
	i32 3758932259, ; 254: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 72
	i32 3760520151, ; 255: System.Reactive.Linq.dll => 0xe024fbd7 => 38
	i32 3786282454, ; 256: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 57
	i32 3822602673, ; 257: Xamarin.AndroidX.Media => 0xe3d849b1 => 81
	i32 3829621856, ; 258: System.Numerics.dll => 0xe4436460 => 34
	i32 3835113687, ; 259: System.Reactive.PlatformServices => 0xe49730d7 => 39
	i32 3876362041, ; 260: SQLite-net => 0xe70c9739 => 24
	i32 3885922214, ; 261: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 93
	i32 3896106733, ; 262: System.Collections.Concurrent.dll => 0xe839deed => 7
	i32 3896760992, ; 263: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 62
	i32 3920810846, ; 264: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 132
	i32 3921031405, ; 265: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 96
	i32 3931092270, ; 266: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 85
	i32 3934056515, ; 267: Xamarin.JavaX.Inject.dll => 0xea7cf043 => 124
	i32 3945713374, ; 268: System.Data.DataSetExtensions.dll => 0xeb2ecede => 129
	i32 3955647286, ; 269: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 51
	i32 3970018735, ; 270: Xamarin.GooglePlayServices.Tasks.dll => 0xeca1adaf => 123
	i32 4025784931, ; 271: System.Memory => 0xeff49a63 => 32
	i32 4073602200, ; 272: System.Threading.dll => 0xf2ce3c98 => 3
	i32 4105002889, ; 273: Mono.Security.dll => 0xf4ad5f89 => 135
	i32 4151237749, ; 274: System.Core => 0xf76edc75 => 30
	i32 4182413190, ; 275: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 78
	i32 4260525087, ; 276: System.Buffers => 0xfdf2741f => 29
	i32 4269159614, ; 277: Xamarin.Firebase.Datatransport => 0xfe7634be => 103
	i32 4284549794, ; 278: Xamarin.Firebase.Components => 0xff610aa2 => 102
	i32 4292120959 ; 279: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 78
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [280 x i32] [
	i32 76, i32 118, i32 19, i32 23, i32 109, i32 90, i32 100, i32 90, ; 0..7
	i32 57, i32 45, i32 91, i32 9, i32 55, i32 5, i32 71, i32 6, ; 8..15
	i32 134, i32 60, i32 75, i32 69, i32 47, i32 34, i32 73, i32 27, ; 16..23
	i32 32, i32 59, i32 99, i32 8, i32 68, i32 18, i32 31, i32 69, ; 24..31
	i32 115, i32 80, i32 115, i32 113, i32 45, i32 128, i32 122, i32 136, ; 32..39
	i32 132, i32 64, i32 0, i32 96, i32 52, i32 7, i32 43, i32 44, ; 40..47
	i32 25, i32 131, i32 130, i32 38, i32 87, i32 105, i32 6, i32 106, ; 48..55
	i32 118, i32 19, i32 20, i32 73, i32 13, i32 4, i32 8, i32 114, ; 56..63
	i32 89, i32 51, i32 121, i32 111, i32 139, i32 77, i32 31, i32 22, ; 64..71
	i32 23, i32 107, i32 94, i32 84, i32 52, i32 95, i32 21, i32 26, ; 72..79
	i32 66, i32 138, i32 101, i32 125, i32 89, i32 1, i32 124, i32 81, ; 80..87
	i32 61, i32 40, i32 4, i32 136, i32 112, i32 131, i32 50, i32 15, ; 88..95
	i32 104, i32 15, i32 46, i32 65, i32 11, i32 79, i32 98, i32 63, ; 96..103
	i32 33, i32 41, i32 92, i32 116, i32 60, i32 12, i32 5, i32 27, ; 104..111
	i32 137, i32 56, i32 91, i32 30, i32 68, i32 79, i32 116, i32 85, ; 112..119
	i32 139, i32 99, i32 112, i32 53, i32 1, i32 10, i32 120, i32 82, ; 120..127
	i32 108, i32 29, i32 77, i32 22, i32 74, i32 41, i32 35, i32 70, ; 128..135
	i32 28, i32 114, i32 110, i32 119, i32 46, i32 100, i32 33, i32 94, ; 136..143
	i32 80, i32 82, i32 72, i32 88, i32 39, i32 37, i32 48, i32 16, ; 144..151
	i32 16, i32 86, i32 25, i32 59, i32 126, i32 14, i32 107, i32 108, ; 152..159
	i32 121, i32 129, i32 76, i32 95, i32 117, i32 63, i32 106, i32 67, ; 160..167
	i32 75, i32 92, i32 2, i32 47, i32 50, i32 109, i32 117, i32 97, ; 168..175
	i32 102, i32 20, i32 61, i32 42, i32 119, i32 97, i32 93, i32 105, ; 176..183
	i32 137, i32 133, i32 18, i32 104, i32 98, i32 35, i32 49, i32 9, ; 184..191
	i32 66, i32 71, i32 13, i32 83, i32 123, i32 101, i32 2, i32 103, ; 192..199
	i32 11, i32 21, i32 113, i32 127, i32 65, i32 3, i32 120, i32 135, ; 200..207
	i32 56, i32 54, i32 37, i32 24, i32 0, i32 36, i32 64, i32 127, ; 208..215
	i32 122, i32 53, i32 84, i32 70, i32 26, i32 62, i32 14, i32 88, ; 216..223
	i32 40, i32 125, i32 36, i32 42, i32 126, i32 44, i32 67, i32 17, ; 224..231
	i32 12, i32 128, i32 58, i32 54, i32 43, i32 110, i32 133, i32 138, ; 232..239
	i32 86, i32 87, i32 111, i32 49, i32 74, i32 17, i32 134, i32 55, ; 240..247
	i32 58, i32 10, i32 130, i32 48, i32 83, i32 28, i32 72, i32 38, ; 248..255
	i32 57, i32 81, i32 34, i32 39, i32 24, i32 93, i32 7, i32 62, ; 256..263
	i32 132, i32 96, i32 85, i32 124, i32 129, i32 51, i32 123, i32 32, ; 264..271
	i32 3, i32 135, i32 30, i32 78, i32 29, i32 103, i32 102, i32 78 ; 280..279
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"NumRegisterParameters", i32 0}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}
