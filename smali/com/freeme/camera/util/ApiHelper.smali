.class public Lcom/freeme/camera/util/ApiHelper;
.super Ljava/lang/Object;
.source "ApiHelper.java"


# static fields
.field public static final AT_LEAST_16:Z

.field public static final HAS_ANNOUNCE_FOR_ACCESSIBILITY:Z

.field public static final HAS_APP_GALLERY:Z

.field public static final HAS_AUTO_FOCUS_MOVE_CALLBACK:Z

.field public static final HAS_CAMERA_2_API:Z

.field public static final HAS_CAMERA_HDR:Z

.field public static final HAS_CAMERA_HDR_PLUS:Z

.field public static final HAS_DISPLAY_LISTENER:Z

.field public static final HAS_HIDEYBARS:Z

.field public static final HAS_MEDIA_ACTION_SOUND:Z

.field public static final HAS_MEDIA_COLUMNS_WIDTH_AND_HEIGHT:Z

.field public static final HAS_ORIENTATION_LOCK:Z

.field public static final HAS_ROBOTO_MEDIUM_FONT:Z

.field public static final HAS_ROTATION_ANIMATION:Z

.field public static final HAS_SET_BEAM_PUSH_URIS:Z

.field public static final HAS_SURFACE_TEXTURE_RECORDING:Z

.field public static final HDR_PLUS_CAN_USE_ARBITRARY_ASPECT_RATIOS:Z

.field public static final IS_HTC:Z

.field public static final IS_NEXUS_4:Z

.field public static final IS_NEXUS_5:Z

.field public static final IS_NEXUS_6:Z

.field public static final IS_NEXUS_9:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    sput-boolean v0, Lcom/freeme/camera/util/ApiHelper;->AT_LEAST_16:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xf

    if-lt v0, v4, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    sput-boolean v0, Lcom/freeme/camera/util/ApiHelper;->HAS_APP_GALLERY:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v3

    :goto_2
    sput-boolean v0, Lcom/freeme/camera/util/ApiHelper;->HAS_ANNOUNCE_FOR_ACCESSIBILITY:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v3

    :goto_3
    sput-boolean v0, Lcom/freeme/camera/util/ApiHelper;->HAS_AUTO_FOCUS_MOVE_CALLBACK:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_4

    move v0, v2

    goto :goto_4

    :cond_4
    move v0, v3

    :goto_4
    sput-boolean v0, Lcom/freeme/camera/util/ApiHelper;->HAS_MEDIA_ACTION_SOUND:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_5

    move v0, v2

    goto :goto_5

    :cond_5
    move v0, v3

    :goto_5
    sput-boolean v0, Lcom/freeme/camera/util/ApiHelper;->HAS_MEDIA_COLUMNS_WIDTH_AND_HEIGHT:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_6

    move v0, v2

    goto :goto_6

    :cond_6
    move v0, v3

    :goto_6
    sput-boolean v0, Lcom/freeme/camera/util/ApiHelper;->HAS_SET_BEAM_PUSH_URIS:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_7

    move v0, v2

    goto :goto_7

    :cond_7
    move v0, v3

    :goto_7
    sput-boolean v0, Lcom/freeme/camera/util/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_8

    move v0, v2

    goto :goto_8

    :cond_8
    move v0, v3

    :goto_8
    sput-boolean v0, Lcom/freeme/camera/util/ApiHelper;->HAS_ROBOTO_MEDIUM_FONT:Z

    invoke-static {}, Lcom/freeme/camera/util/ApiHelper;->isKitKatOrHigher()Z

    move-result v0

    sput-boolean v0, Lcom/freeme/camera/util/ApiHelper;->HAS_CAMERA_HDR_PLUS:Z

    invoke-static {}, Lcom/freeme/camera/util/ApiHelper;->isKitKatMR2OrHigher()Z

    move-result v0

    sput-boolean v0, Lcom/freeme/camera/util/ApiHelper;->HDR_PLUS_CAN_USE_ARBITRARY_ASPECT_RATIOS:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_9

    move v0, v2

    goto :goto_9

    :cond_9
    move v0, v3

    :goto_9
    sput-boolean v0, Lcom/freeme/camera/util/ApiHelper;->HAS_CAMERA_HDR:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_a

    move v0, v2

    goto :goto_a

    :cond_a
    move v0, v3

    :goto_a
    sput-boolean v0, Lcom/freeme/camera/util/ApiHelper;->HAS_DISPLAY_LISTENER:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_b

    move v0, v2

    goto :goto_b

    :cond_b
    move v0, v3

    :goto_b
    sput-boolean v0, Lcom/freeme/camera/util/ApiHelper;->HAS_ORIENTATION_LOCK:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_c

    move v0, v2

    goto :goto_c

    :cond_c
    move v0, v3

    :goto_c
    sput-boolean v0, Lcom/freeme/camera/util/ApiHelper;->HAS_ROTATION_ANIMATION:Z

    invoke-static {}, Lcom/freeme/camera/util/ApiHelper;->isKitKatOrHigher()Z

    move-result v0

    sput-boolean v0, Lcom/freeme/camera/util/ApiHelper;->HAS_HIDEYBARS:Z

    const-string v0, "mako"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/freeme/camera/util/ApiHelper;->IS_NEXUS_4:Z

    const-string v0, "LGE"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "hammerhead"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v2

    goto :goto_d

    :cond_d
    move v0, v3

    :goto_d
    sput-boolean v0, Lcom/freeme/camera/util/ApiHelper;->IS_NEXUS_5:Z

    const-string v0, "motorola"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "shamu"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v2

    goto :goto_e

    :cond_e
    move v0, v3

    :goto_e
    sput-boolean v0, Lcom/freeme/camera/util/ApiHelper;->IS_NEXUS_6:Z

    const-string v0, "htc"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "flounder"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "flounder_lte"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_f

    :cond_f
    move v2, v3

    :cond_10
    :goto_f
    sput-boolean v2, Lcom/freeme/camera/util/ApiHelper;->IS_NEXUS_9:Z

    const-string v0, "htc"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/freeme/camera/util/ApiHelper;->IS_HTC:Z

    invoke-static {}, Lcom/freeme/camera/util/ApiHelper;->isLOrHigher()Z

    move-result v0

    sput-boolean v0, Lcom/freeme/camera/util/ApiHelper;->HAS_CAMERA_2_API:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIntFieldIfExists(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;I)I"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return p3
.end method

.method public static isKitKatMR2OrHigher()Z
    .locals 2

    invoke-static {}, Lcom/freeme/camera/util/ApiHelper;->isLOrHigher()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/freeme/camera/util/ApiHelper;->isKitKatOrHigher()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "4.4.4"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "4.4.3"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isKitKatOrHigher()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_1

    const-string v0, "KeyLimePie"

    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isLOrHigher()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    const-string v0, "L"

    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
