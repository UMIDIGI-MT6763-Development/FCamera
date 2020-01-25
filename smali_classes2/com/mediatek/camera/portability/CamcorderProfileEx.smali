.class public Lcom/mediatek/camera/portability/CamcorderProfileEx;
.super Ljava/lang/Object;
.source "CamcorderProfileEx.java"


# static fields
.field public static final QUALITY_FINE:I = 0x6f

.field public static final QUALITY_FINE_4K2K:I = 0x7b

.field public static final QUALITY_H264_HIGH:I = 0x75

.field public static final QUALITY_HIGH:I = 0x6e

.field private static final QUALITY_LIST_END:I = 0x7b

.field private static final QUALITY_LIST_START:I = 0x6c

.field public static final QUALITY_LOW:I = 0x6c

.field public static final QUALITY_MEDIUM:I = 0x6d

.field public static final SLOW_MOTION_FHD_120FPS:I = 0x8cb

.field public static final SLOW_MOTION_FHD_240FPS:I = 0x8cc

.field public static final SLOW_MOTION_FHD_60FPS:I = 0x8ca

.field public static final SLOW_MOTION_HD_120FPS:I = 0x8c1

.field public static final SLOW_MOTION_HD_180FPS:I = 0x8c2

.field public static final SLOW_MOTION_HD_240FPS:I = 0x8c3

.field public static final SLOW_MOTION_HD_60FPS:I = 0x8c0

.field private static final SLOW_MOTION_LIST_END:I = 0x8cc

.field private static final SLOW_MOTION_LIST_START:I = 0x8b7

.field public static final SLOW_MOTION_VGA_120FPS:I = 0x8b7

.field private static final TAG:Ljava/lang/String; = "CamcorderProfileEx"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final getCamcorderProfileNative(II)Landroid/media/CamcorderProfile;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Landroid/media/CamcorderProfile;

    const-string v2, "native_get_camcorder_profile"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v7

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/CamcorderProfile;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "CamcorderProfileEx"

    const-string p1, "native_get_camcorder_profile error"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    const-string p0, "CamcorderProfileEx"

    const-string p1, "native_get_camcorder_profile error"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    const-string p0, "CamcorderProfileEx"

    const-string p1, "native_get_camcorder_profile error"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_3
    const-string p0, "CamcorderProfileEx"

    const-string p1, "native_get_camcorder_profile error"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_4
    const-string p0, "CamcorderProfileEx"

    const-string p1, "native_get_camcorder_profile error"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method public static getProfile(I)Landroid/media/CamcorderProfile;
    .locals 4

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-static {v2, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    iget v3, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v3, :cond_0

    invoke-static {v2, p0}, Lcom/mediatek/camera/portability/CamcorderProfileEx;->getProfile(II)Landroid/media/CamcorderProfile;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getProfile(II)Landroid/media/CamcorderProfile;
    .locals 0

    invoke-static {p0, p1}, Lcom/mediatek/camera/portability/CamcorderProfileEx;->getCamcorderProfileNative(II)Landroid/media/CamcorderProfile;

    move-result-object p0

    return-object p0
.end method

.method private static getQualityNum(Ljava/lang/String;)I
    .locals 1

    :try_start_0
    const-class v0, Landroid/media/CamcorderProfile;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "CamcorderProfileEx"

    const-string v0, "getQualityNum error"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    const-string p0, "CamcorderProfileEx"

    const-string v0, "getQualityNum error"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    const-string p0, "CamcorderProfileEx"

    const-string v0, "getQualityNum error"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_3
    const-string p0, "CamcorderProfileEx"

    const-string v0, "getQualityNum error"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method
