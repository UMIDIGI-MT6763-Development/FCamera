.class public Lcom/baidu/platform/comapi/util/f;
.super Ljava/lang/Object;


# static fields
.field public static A:Landroid/content/Context; = null

.field public static final B:I

.field public static C:F = 0.0f

.field public static D:Ljava/lang/String; = null

.field private static final E:Ljava/lang/String; = "f"

.field private static F:Z

.field private static G:I

.field private static H:I

.field static a:Lcom/baidu/platform/comjni/map/commonmemcache/a;

.field static b:Ljava/lang/String;

.field static c:Ljava/lang/String;

.field static d:Ljava/lang/String;

.field static e:Ljava/lang/String;

.field static f:Ljava/lang/String;

.field static g:I

.field static h:I

.field static i:I

.field static j:I

.field static k:I

.field static l:I

.field static m:Ljava/lang/String;

.field static n:Ljava/lang/String;

.field static o:Ljava/lang/String;

.field static p:Ljava/lang/String;

.field static q:Ljava/lang/String;

.field static r:Ljava/lang/String;

.field static s:Ljava/lang/String;

.field static t:Ljava/lang/String;

.field static u:Ljava/lang/String;

.field static v:Ljava/lang/String;

.field static w:Ljava/lang/String;

.field static x:Ljava/lang/String;

.field static y:Ljava/lang/String;

.field static z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/baidu/platform/comjni/map/commonmemcache/a;

    invoke-direct {v0}, Lcom/baidu/platform/comjni/map/commonmemcache/a;-><init>()V

    sput-object v0, Lcom/baidu/platform/comapi/util/f;->a:Lcom/baidu/platform/comjni/map/commonmemcache/a;

    const-string v0, "02"

    sput-object v0, Lcom/baidu/platform/comapi/util/f;->b:Ljava/lang/String;

    const-string v0, "baidu"

    sput-object v0, Lcom/baidu/platform/comapi/util/f;->r:Ljava/lang/String;

    const-string v0, "baidu"

    sput-object v0, Lcom/baidu/platform/comapi/util/f;->s:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/baidu/platform/comapi/util/f;->t:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/baidu/platform/comapi/util/f;->u:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/baidu/platform/comapi/util/f;->v:Ljava/lang/String;

    const-string v0, "-1"

    sput-object v0, Lcom/baidu/platform/comapi/util/f;->y:Ljava/lang/String;

    const-string v0, "-1"

    sput-object v0, Lcom/baidu/platform/comapi/util/f;->z:Ljava/lang/String;

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/baidu/platform/comapi/util/f;->B:I

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/baidu/platform/comapi/util/f;->C:F

    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/platform/comapi/util/f;->F:Z

    const/4 v0, 0x0

    sput v0, Lcom/baidu/platform/comapi/util/f;->G:I

    sput v0, Lcom/baidu/platform/comapi/util/f;->H:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "cpu"

    sget-object v2, Lcom/baidu/platform/comapi/util/f;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "resid"

    sget-object v2, Lcom/baidu/platform/comapi/util/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "channel"

    sget-object v2, Lcom/baidu/platform/comapi/util/f;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "glr"

    sget-object v2, Lcom/baidu/platform/comapi/util/f;->u:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "glv"

    sget-object v2, Lcom/baidu/platform/comapi/util/f;->v:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mb"

    invoke-static {}, Lcom/baidu/platform/comapi/util/f;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sv"

    invoke-static {}, Lcom/baidu/platform/comapi/util/f;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "os"

    invoke-static {}, Lcom/baidu/platform/comapi/util/f;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "dpi_x"

    invoke-static {}, Lcom/baidu/platform/comapi/util/f;->j()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "dpi_y"

    invoke-static {}, Lcom/baidu/platform/comapi/util/f;->j()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "net"

    sget-object v2, Lcom/baidu/platform/comapi/util/f;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cuid"

    invoke-static {}, Lcom/baidu/platform/comapi/util/f;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "signature"

    sget-object v2, Lcom/baidu/platform/comapi/util/f;->A:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/platform/comapi/util/f;->a(Landroid/content/Context;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v1, "pcn"

    sget-object v2, Lcom/baidu/platform/comapi/util/f;->A:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "screen_x"

    invoke-static {}, Lcom/baidu/platform/comapi/util/f;->f()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "screen_y"

    invoke-static {}, Lcom/baidu/platform/comapi/util/f;->h()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/baidu/platform/comapi/util/f;->p:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/platform/comapi/util/f;->d()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/baidu/platform/comapi/util/f;->y:Ljava/lang/String;

    sput-object p0, Lcom/baidu/platform/comapi/util/f;->z:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/platform/comapi/util/f;->d()V

    return-void
.end method

.method public static a(Landroid/content/Context;)[B
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x40

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static b()V
    .locals 1

    sget-object v0, Lcom/baidu/platform/comapi/util/f;->a:Lcom/baidu/platform/comjni/map/commonmemcache/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/baidu/platform/comjni/map/commonmemcache/a;->a()J

    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3

    sput-object p0, Lcom/baidu/platform/comapi/util/f;->A:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/platform/comapi/util/f;->w:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/platform/comapi/util/f;->x:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/baidu/platform/comapi/util/f;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Android"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/platform/comapi/util/f;->e:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/platform/comapi/util/f;->c:Ljava/lang/String;

    invoke-static {p0}, Lcom/baidu/platform/comapi/util/f;->c(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/baidu/platform/comapi/util/f;->d(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/baidu/platform/comapi/util/f;->e(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/baidu/platform/comapi/util/f;->f(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/baidu/platform/comapi/util/f;->g(Landroid/content/Context;)V

    :try_start_0
    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    const-string v0, "gps"

    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sput v0, Lcom/baidu/platform/comapi/util/f;->G:I

    const-string v0, "network"

    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    sput v1, Lcom/baidu/platform/comapi/util/f;->H:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string p0, "baidumapsdk"

    const-string v0, "LocationManager error"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/platform/comapi/util/f;->p:Ljava/lang/String;

    return-object v0
.end method

.method private static c(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    invoke-static {}, Lcom/baidu/mapapi/VersionInfo;->getApiVersion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/platform/comapi/util/f;->f:Ljava/lang/String;

    sget-object v0, Lcom/baidu/platform/comapi/util/f;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/baidu/platform/comapi/util/f;->f:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/baidu/platform/comapi/util/f;->f:Ljava/lang/String;

    const/16 v1, 0x5f

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/platform/comapi/util/f;->f:Ljava/lang/String;

    :cond_0
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    sput p0, Lcom/baidu/platform/comapi/util/f;->g:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "1.0.0"

    sput-object p0, Lcom/baidu/platform/comapi/util/f;->f:Ljava/lang/String;

    const/4 p0, 0x1

    sput p0, Lcom/baidu/platform/comapi/util/f;->g:I

    :goto_0
    return-void
.end method

.method public static d()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "cpu"

    sget-object v2, Lcom/baidu/platform/comapi/util/f;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "resid"

    sget-object v2, Lcom/baidu/platform/comapi/util/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "channel"

    sget-object v2, Lcom/baidu/platform/comapi/util/f;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "glr"

    sget-object v2, Lcom/baidu/platform/comapi/util/f;->u:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "glv"

    sget-object v2, Lcom/baidu/platform/comapi/util/f;->v:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mb"

    invoke-static {}, Lcom/baidu/platform/comapi/util/f;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sv"

    invoke-static {}, Lcom/baidu/platform/comapi/util/f;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "os"

    invoke-static {}, Lcom/baidu/platform/comapi/util/f;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "dpi_x"

    invoke-static {}, Lcom/baidu/platform/comapi/util/f;->j()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "dpi_y"

    invoke-static {}, Lcom/baidu/platform/comapi/util/f;->j()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "net"

    sget-object v2, Lcom/baidu/platform/comapi/util/f;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cuid"

    invoke-static {}, Lcom/baidu/platform/comapi/util/f;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pcn"

    sget-object v2, Lcom/baidu/platform/comapi/util/f;->A:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "screen_x"

    invoke-static {}, Lcom/baidu/platform/comapi/util/f;->f()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "screen_y"

    invoke-static {}, Lcom/baidu/platform/comapi/util/f;->h()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "appid"

    sget-object v2, Lcom/baidu/platform/comapi/util/f;->y:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "duid"

    sget-object v2, Lcom/baidu/platform/comapi/util/f;->z:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/baidu/platform/comapi/util/f;->D:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "token"

    sget-object v2, Lcom/baidu/platform/comapi/util/f;->D:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v1, Lcom/baidu/platform/comapi/util/f;->a:Lcom/baidu/platform/comjni/map/commonmemcache/a;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/baidu/platform/comjni/map/commonmemcache/a;->a(Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method private static d(Landroid/content/Context;)V
    .locals 3

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result v1

    sput v1, Lcom/baidu/platform/comapi/util/f;->h:I

    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result v1

    sput v1, Lcom/baidu/platform/comapi/util/f;->i:I

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    :cond_1
    iget p0, v0, Landroid/util/DisplayMetrics;->density:F

    sput p0, Lcom/baidu/platform/comapi/util/f;->C:F

    iget p0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    float-to-int p0, p0

    sput p0, Lcom/baidu/platform/comapi/util/f;->j:I

    iget p0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    float-to-int p0, p0

    sput p0, Lcom/baidu/platform/comapi/util/f;->k:I

    sget p0, Lcom/baidu/platform/comapi/util/f;->B:I

    const/4 v1, 0x3

    const/16 v2, 0xa0

    if-le p0, v1, :cond_2

    iget p0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sput p0, Lcom/baidu/platform/comapi/util/f;->l:I

    goto :goto_1

    :cond_2
    sput v2, Lcom/baidu/platform/comapi/util/f;->l:I

    :goto_1
    sget p0, Lcom/baidu/platform/comapi/util/f;->l:I

    if-nez p0, :cond_3

    sput v2, Lcom/baidu/platform/comapi/util/f;->l:I

    :cond_3
    return-void
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/platform/comapi/util/f;->d:Ljava/lang/String;

    return-object v0
.end method

.method private static e(Landroid/content/Context;)V
    .locals 1

    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/baidu/platform/comapi/util/f;->n:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, ""

    sput-object v0, Lcom/baidu/platform/comapi/util/f;->m:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/baidu/platform/comapi/util/f;->n:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/baidu/platform/comapi/util/f;->o:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static f()I
    .locals 1

    sget v0, Lcom/baidu/platform/comapi/util/f;->h:I

    return v0
.end method

.method private static f(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "android_id"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/baidu/platform/comapi/util/f;->q:Ljava/lang/String;

    return-void
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/platform/comapi/util/f;->f:Ljava/lang/String;

    return-object v0
.end method

.method private static g(Landroid/content/Context;)V
    .locals 0

    const-string p0, "0"

    sput-object p0, Lcom/baidu/platform/comapi/util/f;->p:Ljava/lang/String;

    return-void
.end method

.method public static h()I
    .locals 1

    sget v0, Lcom/baidu/platform/comapi/util/f;->i:I

    return v0
.end method

.method public static i()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/platform/comapi/util/f;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static j()I
    .locals 1

    sget v0, Lcom/baidu/platform/comapi/util/f;->l:I

    return v0
.end method

.method public static k()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/platform/comapi/util/f;->w:Ljava/lang/String;

    return-object v0
.end method

.method public static l()Ljava/lang/String;
    .locals 1

    :try_start_0
    sget-object v0, Lcom/baidu/platform/comapi/util/f;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/bbalbs/common/util/CommonParam;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, ""

    :goto_0
    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method
