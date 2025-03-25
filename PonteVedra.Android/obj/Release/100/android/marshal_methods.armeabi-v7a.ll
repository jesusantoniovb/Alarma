; ModuleID = 'obj\Release\100\android\marshal_methods.armeabi-v7a.ll'
source_filename = "obj\Release\100\android\marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


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
@assembly_image_cache_hashes = local_unnamed_addr constant [144 x i32] [
	i32 34715100, ; 0: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 65
	i32 39109920, ; 1: Newtonsoft.Json.dll => 0x254c520 => 39
	i32 39852199, ; 2: Plugin.Permissions => 0x26018a7 => 43
	i32 57263871, ; 3: Xamarin.Forms.Core.dll => 0x369c6ff => 57
	i32 166922606, ; 4: Xamarin.Android.Support.Compat.dll => 0x9f3096e => 13
	i32 182336117, ; 5: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 29
	i32 318968648, ; 6: Xamarin.AndroidX.Activity.dll => 0x13031348 => 53
	i32 321597661, ; 7: System.Numerics => 0x132b30dd => 8
	i32 342366114, ; 8: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 24
	i32 347068432, ; 9: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 47
	i32 442521989, ; 10: Xamarin.Essentials => 0x1a605985 => 55
	i32 450948140, ; 11: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 22
	i32 465846621, ; 12: mscorlib => 0x1bc4415d => 3
	i32 469710990, ; 13: System.dll => 0x1bff388e => 6
	i32 485140951, ; 14: Xamarin.Google.Android.DataTransport.TransportRuntime => 0x1ceaa9d7 => 63
	i32 495452658, ; 15: Xamarin.Google.Android.DataTransport.TransportRuntime.dll => 0x1d8801f2 => 63
	i32 507148113, ; 16: Xamarin.Google.Android.DataTransport.TransportApi.dll => 0x1e3a7751 => 61
	i32 514659665, ; 17: Xamarin.Android.Support.Compat => 0x1ead1551 => 13
	i32 627609679, ; 18: Xamarin.AndroidX.CustomView => 0x2568904f => 20
	i32 662365150, ; 19: Alarma.Android.dll => 0x277ae3de => 70
	i32 690569205, ; 20: System.Xml.Linq.dll => 0x29293ff5 => 11
	i32 692692150, ; 21: Xamarin.Android.Support.Annotations => 0x2949a4b6 => 12
	i32 748832960, ; 22: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 45
	i32 809851609, ; 23: System.Drawing.Common.dll => 0x30455ad9 => 34
	i32 831745141, ; 24: System.Reactive.Linq => 0x31936c75 => 51
	i32 928116545, ; 25: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 65
	i32 955402788, ; 26: Newtonsoft.Json => 0x38f24a24 => 39
	i32 957807352, ; 27: Plugin.CurrentActivity => 0x3916faf8 => 40
	i32 967690846, ; 28: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 24
	i32 974778368, ; 29: FormsViewGroup.dll => 0x3a19f000 => 36
	i32 996733531, ; 30: Xamarin.Google.Android.DataTransport.TransportBackendCct => 0x3b68f25b => 62
	i32 1012816738, ; 31: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 54
	i32 1035644815, ; 32: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 16
	i32 1042160112, ; 33: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 59
	i32 1052210849, ; 34: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 26
	i32 1098259244, ; 35: System => 0x41761b2c => 6
	i32 1104002344, ; 36: Plugin.Media => 0x41cdbd28 => 42
	i32 1137654822, ; 37: Plugin.Permissions.dll => 0x43cf3c26 => 43
	i32 1282958517, ; 38: Plugin.Geolocator => 0x4c7864b5 => 41
	i32 1292207520, ; 39: SQLitePCLRaw.core.dll => 0x4d0585a0 => 46
	i32 1293217323, ; 40: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 21
	i32 1365406463, ; 41: System.ServiceModel.Internals.dll => 0x516272ff => 32
	i32 1376866003, ; 42: Xamarin.AndroidX.SavedState => 0x52114ed3 => 54
	i32 1379897097, ; 43: Xamarin.JavaX.Inject => 0x523f8f09 => 69
	i32 1406073936, ; 44: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 18
	i32 1411638395, ; 45: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 9
	i32 1460219004, ; 46: Xamarin.Forms.Xaml => 0x57092c7c => 60
	i32 1469204771, ; 47: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 15
	i32 1528512243, ; 48: Matcha.BackgroundService => 0x5b1b3ef3 => 37
	i32 1548710267, ; 49: Matcha.BackgroundService.dll => 0x5c4f717b => 37
	i32 1574652163, ; 50: Xamarin.Android.Support.Core.Utils.dll => 0x5ddb4903 => 14
	i32 1592978981, ; 51: System.Runtime.Serialization.dll => 0x5ef2ee25 => 0
	i32 1622152042, ; 52: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 27
	i32 1639515021, ; 53: System.Net.Http.dll => 0x61b9038d => 7
	i32 1658251792, ; 54: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 31
	i32 1671064124, ; 55: Alarma => 0x639a6a3c => 71
	i32 1711441057, ; 56: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 47
	i32 1729485958, ; 57: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 17
	i32 1766324549, ; 58: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 29
	i32 1776026572, ; 59: System.Core.dll => 0x69dc03cc => 5
	i32 1788241197, ; 60: Xamarin.AndroidX.Fragment => 0x6a96652d => 22
	i32 1808609942, ; 61: Xamarin.AndroidX.Loader => 0x6bcd3296 => 27
	i32 1813201214, ; 62: Xamarin.Google.Android.Material => 0x6c13413e => 31
	i32 1867746548, ; 63: Xamarin.Essentials.dll => 0x6f538cf4 => 55
	i32 1878053835, ; 64: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 60
	i32 1908813208, ; 65: Xamarin.GooglePlayServices.Basement => 0x71c62d98 => 67
	i32 1933215285, ; 66: Xamarin.Firebase.Messaging.dll => 0x733a8635 => 56
	i32 2011961780, ; 67: System.Buffers.dll => 0x77ec19b4 => 4
	i32 2019465201, ; 68: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 26
	i32 2048185678, ; 69: Plugin.Media.dll => 0x7a14d54e => 42
	i32 2055257422, ; 70: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 25
	i32 2097448633, ; 71: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 23
	i32 2103459038, ; 72: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 48
	i32 2124230737, ; 73: Xamarin.Google.Android.DataTransport.TransportBackendCct.dll => 0x7e9d3051 => 62
	i32 2126786730, ; 74: Xamarin.Forms.Platform.Android => 0x7ec430aa => 58
	i32 2129483829, ; 75: Xamarin.GooglePlayServices.Base.dll => 0x7eed5835 => 66
	i32 2166116741, ; 76: Xamarin.Android.Support.Core.Utils => 0x811c5185 => 14
	i32 2201231467, ; 77: System.Net.Http => 0x8334206b => 7
	i32 2279755925, ; 78: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 28
	i32 2292630417, ; 79: System.Reactive.PlatformServices.dll => 0x88a6c391 => 52
	i32 2303054758, ; 80: System.Reactive.Interfaces.dll => 0x8945d3a6 => 50
	i32 2319330481, ; 81: Matcha.BackgroundService.Droid.dll => 0x8a3e2cb1 => 38
	i32 2321843949, ; 82: Matcha.BackgroundService.Droid => 0x8a6486ed => 38
	i32 2465273461, ; 83: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 45
	i32 2475788418, ; 84: Java.Interop.dll => 0x93918882 => 1
	i32 2483742551, ; 85: Xamarin.Firebase.Messaging => 0x940ae757 => 56
	i32 2593964533, ; 86: Xamarin.Google.Dagger => 0x9a9cc1f5 => 64
	i32 2732626843, ; 87: Xamarin.AndroidX.Activity => 0xa2e0939b => 53
	i32 2737747696, ; 88: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 15
	i32 2766581644, ; 89: Xamarin.Forms.Core => 0xa4e6af8c => 57
	i32 2772412848, ; 90: Xamarin.Google.Dagger.dll => 0xa53fa9b0 => 64
	i32 2778768386, ; 91: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 30
	i32 2806986428, ; 92: Plugin.CurrentActivity.dll => 0xa74f36bc => 40
	i32 2810250172, ; 93: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 18
	i32 2819470561, ; 94: System.Xml.dll => 0xa80db4e1 => 10
	i32 2847418871, ; 95: Xamarin.GooglePlayServices.Base => 0xa9b829f7 => 66
	i32 2853208004, ; 96: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 30
	i32 2905242038, ; 97: mscorlib.dll => 0xad2a79b6 => 3
	i32 2978675010, ; 98: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 21
	i32 3044182254, ; 99: FormsViewGroup => 0xb57288ee => 36
	i32 3058099980, ; 100: Xamarin.GooglePlayServices.Tasks => 0xb646e70c => 68
	i32 3111772706, ; 101: System.Runtime.Serialization => 0xb979e222 => 0
	i32 3126016514, ; 102: Plugin.Geolocator.dll => 0xba533a02 => 41
	i32 3155362983, ; 103: Xamarin.Google.Android.DataTransport.TransportApi => 0xbc1304a7 => 61
	i32 3204380047, ; 104: System.Data.dll => 0xbefef58f => 33
	i32 3230466174, ; 105: Xamarin.GooglePlayServices.Basement.dll => 0xc08d007e => 67
	i32 3247949154, ; 106: Mono.Security => 0xc197c562 => 35
	i32 3258312781, ; 107: Xamarin.AndroidX.CardView => 0xc235e84d => 17
	i32 3282591531, ; 108: System.Reactive.Interfaces => 0xc3a85f2b => 50
	i32 3286872994, ; 109: SQLite-net.dll => 0xc3e9b3a2 => 44
	i32 3299378109, ; 110: Alarma.Android => 0xc4a883bd => 70
	i32 3300173928, ; 111: System.Reactive.Core => 0xc4b4a868 => 49
	i32 3317135071, ; 112: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 20
	i32 3317144872, ; 113: System.Data => 0xc5b79d28 => 33
	i32 3353484488, ; 114: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 23
	i32 3360279109, ; 115: SQLitePCLRaw.core => 0xc849ca45 => 46
	i32 3362522851, ; 116: Xamarin.AndroidX.Core => 0xc86c06e3 => 19
	i32 3366347497, ; 117: Java.Interop => 0xc8a662e9 => 1
	i32 3374999561, ; 118: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 28
	i32 3395150330, ; 119: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 9
	i32 3404865022, ; 120: System.ServiceModel.Internals => 0xcaf21dfe => 32
	i32 3425410982, ; 121: System.Reactive.Core.dll => 0xcc2b9fa6 => 49
	i32 3429136800, ; 122: System.Xml => 0xcc6479a0 => 10
	i32 3439690031, ; 123: Xamarin.Android.Support.Annotations.dll => 0xcd05812f => 12
	i32 3476120550, ; 124: Mono.Android => 0xcf3163e6 => 2
	i32 3479217239, ; 125: Alarma.dll => 0xcf60a457 => 71
	i32 3509114376, ; 126: System.Xml.Linq => 0xd128d608 => 11
	i32 3536029504, ; 127: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 58
	i32 3632359727, ; 128: Xamarin.Forms.Platform => 0xd881692f => 59
	i32 3641597786, ; 129: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 25
	i32 3672681054, ; 130: Mono.Android.dll => 0xdae8aa5e => 2
	i32 3689375977, ; 131: System.Drawing.Common => 0xdbe768e9 => 34
	i32 3754567612, ; 132: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 48
	i32 3760520151, ; 133: System.Reactive.Linq.dll => 0xe024fbd7 => 51
	i32 3829621856, ; 134: System.Numerics.dll => 0xe4436460 => 8
	i32 3835113687, ; 135: System.Reactive.PlatformServices => 0xe49730d7 => 52
	i32 3876362041, ; 136: SQLite-net => 0xe70c9739 => 44
	i32 3896760992, ; 137: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 19
	i32 3934056515, ; 138: Xamarin.JavaX.Inject.dll => 0xea7cf043 => 69
	i32 3955647286, ; 139: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 16
	i32 3970018735, ; 140: Xamarin.GooglePlayServices.Tasks.dll => 0xeca1adaf => 68
	i32 4105002889, ; 141: Mono.Security.dll => 0xf4ad5f89 => 35
	i32 4151237749, ; 142: System.Core => 0xf76edc75 => 5
	i32 4260525087 ; 143: System.Buffers => 0xfdf2741f => 4
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [144 x i32] [
	i32 65, i32 39, i32 43, i32 57, i32 13, i32 29, i32 53, i32 8, ; 0..7
	i32 24, i32 47, i32 55, i32 22, i32 3, i32 6, i32 63, i32 63, ; 8..15
	i32 61, i32 13, i32 20, i32 70, i32 11, i32 12, i32 45, i32 34, ; 16..23
	i32 51, i32 65, i32 39, i32 40, i32 24, i32 36, i32 62, i32 54, ; 24..31
	i32 16, i32 59, i32 26, i32 6, i32 42, i32 43, i32 41, i32 46, ; 32..39
	i32 21, i32 32, i32 54, i32 69, i32 18, i32 9, i32 60, i32 15, ; 40..47
	i32 37, i32 37, i32 14, i32 0, i32 27, i32 7, i32 31, i32 71, ; 48..55
	i32 47, i32 17, i32 29, i32 5, i32 22, i32 27, i32 31, i32 55, ; 56..63
	i32 60, i32 67, i32 56, i32 4, i32 26, i32 42, i32 25, i32 23, ; 64..71
	i32 48, i32 62, i32 58, i32 66, i32 14, i32 7, i32 28, i32 52, ; 72..79
	i32 50, i32 38, i32 38, i32 45, i32 1, i32 56, i32 64, i32 53, ; 80..87
	i32 15, i32 57, i32 64, i32 30, i32 40, i32 18, i32 10, i32 66, ; 88..95
	i32 30, i32 3, i32 21, i32 36, i32 68, i32 0, i32 41, i32 61, ; 96..103
	i32 33, i32 67, i32 35, i32 17, i32 50, i32 44, i32 70, i32 49, ; 104..111
	i32 20, i32 33, i32 23, i32 46, i32 19, i32 1, i32 28, i32 9, ; 112..119
	i32 32, i32 49, i32 10, i32 12, i32 2, i32 71, i32 11, i32 58, ; 120..127
	i32 59, i32 25, i32 2, i32 34, i32 48, i32 51, i32 8, i32 52, ; 128..135
	i32 44, i32 19, i32 69, i32 16, i32 68, i32 35, i32 5, i32 4 ; 144..143
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="all" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn writeonly
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


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}
