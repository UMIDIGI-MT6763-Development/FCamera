.class public Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;
.super Ljava/lang/Object;


# static fields
.field public static API_DOMAIN:Ljava/lang/String; = null

.field public static final DEBUG:Z

.field public static final ENVIRONMENT:I = 0x2

.field public static final ENVIRONMENT_LOCAL:I = 0x0

.field public static final ENVIRONMENT_PRODUCTION:I = 0x2

.field public static final ENVIRONMENT_TEST:I = 0x1

.field public static final NETWORK_DOMAIN:Ljava/lang/String;

.field public static final NETWORK_PATH:Ljava/lang/String; = "api"

.field public static final NETWORK_PORT:I

.field public static final NETWORK_WEB_DOMAIN:Ljava/lang/String;

.field public static final SERVICE_DOMAIN:Ljava/lang/String;

.field public static final SERVICE_PORT:I

.field public static SRV_DOMAIN:Ljava/lang/String; = null

.field public static final SRV_PATH:Ljava/lang/String; = "srv"

.field public static WEB_API_DOMAIN:Ljava/lang/String; = null

.field public static WEB_DOMAIN:Ljava/lang/String; = null

.field public static final WEB_PATH:Ljava/lang/String; = "web"

.field public static WEB_PIC_DOMAIN:Ljava/lang/String;

.field private static a:Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;

.field private static b:Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;

.field private static c:Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;

.field public static useSSL:Z


# instance fields
.field private d:Landroid/content/Context;

.field private e:Lorg/lasque/tusdk/core/network/TuSdkHttp;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:I

.field private l:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x50

    const/4 v2, 0x2

    packed-switch v2, :pswitch_data_0

    const-string v2, "192.168.199.152:80"

    sput-object v2, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->NETWORK_DOMAIN:Ljava/lang/String;

    const-string v2, "192.168.199.152:80"

    sput-object v2, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->NETWORK_WEB_DOMAIN:Ljava/lang/String;

    sput v1, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->NETWORK_PORT:I

    const-string v2, "192.168.199.152:80"

    :goto_0
    sput-object v2, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->SERVICE_DOMAIN:Ljava/lang/String;

    sput v1, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->SERVICE_PORT:I

    sput-boolean v0, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->DEBUG:Z

    goto :goto_1

    :pswitch_0
    const-string v2, "api.tusdk.com"

    sput-object v2, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->NETWORK_DOMAIN:Ljava/lang/String;

    const-string v2, "m.tusdk.com"

    sput-object v2, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->NETWORK_WEB_DOMAIN:Ljava/lang/String;

    sput v1, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->NETWORK_PORT:I

    const-string v2, "srv2.tusdk.com"

    sput-object v2, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->SERVICE_DOMAIN:Ljava/lang/String;

    sput v1, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->SERVICE_PORT:I

    const/4 v1, 0x0

    sput-boolean v1, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->DEBUG:Z

    goto :goto_1

    :pswitch_1
    const-string v2, "192.168.1.134:80"

    sput-object v2, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->NETWORK_DOMAIN:Ljava/lang/String;

    const-string v2, "192.168.199.152:80"

    sput-object v2, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->NETWORK_WEB_DOMAIN:Ljava/lang/String;

    sput v1, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->NETWORK_PORT:I

    const-string v2, "srv.tusdk.com"

    goto :goto_0

    :goto_1
    sput-boolean v0, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->useSSL:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private constructor <init>(Lorg/lasque/tusdk/core/TuSdkConfigs;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->d:Landroid/content/Context;

    iput-object p2, p0, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->h:Ljava/lang/String;

    iput-object p4, p0, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->j:Ljava/lang/String;

    iput p5, p0, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->k:I

    invoke-direct {p0, p2}, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->uniqueDeviceID()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/lasque/tusdk/core/utils/StringHelper;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "?"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    const-string v2, "?"

    goto :goto_0

    :cond_1
    const-string v2, "&"

    :goto_0
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "hash="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&t="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-object p1
.end method

.method private a()Lorg/lasque/tusdk/core/network/TuSdkHttp;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->e:Lorg/lasque/tusdk/core/network/TuSdkHttp;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lorg/lasque/tusdk/core/network/TuSdkHttp;

    iget v1, p0, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->k:I

    invoke-direct {v0, v1}, Lorg/lasque/tusdk/core/network/TuSdkHttp;-><init>(I)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->e:Lorg/lasque/tusdk/core/network/TuSdkHttp;

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->e:Lorg/lasque/tusdk/core/network/TuSdkHttp;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/network/TuSdkHttp;->setEnableRedirct(Z)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->e:Lorg/lasque/tusdk/core/network/TuSdkHttp;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/network/TuSdkHttp;->setMaxConnections(I)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->e:Lorg/lasque/tusdk/core/network/TuSdkHttp;

    const-string v1, "x-client-identifier"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Lorg/lasque/tusdk/core/network/TuSdkHttp;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->e:Lorg/lasque/tusdk/core/network/TuSdkHttp;

    const-string v1, "uuid"

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->uniqueDeviceID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/lasque/tusdk/core/network/TuSdkHttp;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->e:Lorg/lasque/tusdk/core/network/TuSdkHttp;

    const-string v1, "x-client-dev"

    invoke-virtual {v0, v1, p1}, Lorg/lasque/tusdk/core/network/TuSdkHttp;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->b()V

    return-void
.end method

.method private b(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p2, p0, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->d:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const-string v0, "?"

    goto :goto_0

    :cond_1
    const-string v0, "&"

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "app="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p1
.end method

.method private b()V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "%s:%s"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/16 v4, 0x18

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "2.9.0"

    invoke-static {v4}, Lorg/lasque/tusdk/core/utils/StringHelper;->Base64Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "|%s:%s"

    new-array v3, v2, [Ljava/lang/Object;

    const/16 v4, 0x28

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v4}, Lorg/lasque/tusdk/core/utils/StringHelper;->Base64Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|%s:%s"

    new-array v3, v2, [Ljava/lang/Object;

    const/16 v4, 0x38

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v4}, Lorg/lasque/tusdk/core/utils/StringHelper;->Base64Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|%s:%s"

    new-array v3, v2, [Ljava/lang/Object;

    const/16 v4, 0x48

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->d:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/lasque/tusdk/core/utils/StringHelper;->Base64Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|%s:%s"

    new-array v3, v2, [Ljava/lang/Object;

    const/16 v4, 0x58

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->d:Landroid/content/Context;

    invoke-static {v4}, Lorg/lasque/tusdk/core/utils/ContextUtils;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/lasque/tusdk/core/utils/StringHelper;->Base64Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|%s:%s"

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0x78

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-direct {p0}, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/lasque/tusdk/core/utils/StringHelper;->Base64Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/StringHelper;->Base64Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->e:Lorg/lasque/tusdk/core/network/TuSdkHttp;

    const-string v2, "x-client-bundle"

    invoke-virtual {v1, v2, v0}, Lorg/lasque/tusdk/core/network/TuSdkHttp;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/FileHelper;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "TuSDK"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    new-instance v1, Ljava/io/File;

    const-string v2, "TuSDK/global.keystore"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {v1, p1}, Lorg/lasque/tusdk/core/utils/FileHelper;->saveFile(Ljava/io/File;[B)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->g:Ljava/lang/String;

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->g:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->uniqueDeviceID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->g:Ljava/lang/String;

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->g:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->b(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->g:Ljava/lang/String;

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/FileHelper;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v2, Ljava/io/File;

    const-string v3, "TuSDK/global.keystore"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Lorg/lasque/tusdk/core/utils/FileHelper;->readFile(Ljava/io/File;)[B

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :catch_0
    return-object v0
.end method

.method public static init(Lorg/lasque/tusdk/core/TuSdkConfigs;Ljava/lang/String;Landroid/content/Context;)Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;
    .locals 13

    sget-object v0, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->a:Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;

    if-nez v0, :cond_1

    sget-object v0, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->b:Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;

    if-nez v0, :cond_1

    sget-object v0, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->c:Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;

    if-nez v0, :cond_1

    if-eqz p0, :cond_1

    sget-boolean v0, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->useSSL:Z

    if-eqz v0, :cond_0

    const-string v0, "https://%s/%s"

    goto :goto_0

    :cond_0
    const-string v0, "http://%s/%s"

    :goto_0
    const-string v1, "http://%s/%s"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    sget-object v4, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->NETWORK_DOMAIN:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "api"

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->API_DOMAIN:Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/Object;

    sget-object v3, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->NETWORK_WEB_DOMAIN:Ljava/lang/String;

    aput-object v3, v1, v5

    const-string v3, "web"

    aput-object v3, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->WEB_DOMAIN:Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/Object;

    sget-object v3, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->SERVICE_DOMAIN:Ljava/lang/String;

    aput-object v3, v1, v5

    const-string v3, "srv"

    aput-object v3, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->SRV_DOMAIN:Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/Object;

    sget-object v3, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->NETWORK_WEB_DOMAIN:Ljava/lang/String;

    aput-object v3, v1, v5

    const-string v3, "api"

    aput-object v3, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->WEB_API_DOMAIN:Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "img.tusdk.com"

    aput-object v2, v1, v5

    const-string v2, "api"

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->WEB_PIC_DOMAIN:Ljava/lang/String;

    new-instance v0, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;

    sget-object v5, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->API_DOMAIN:Ljava/lang/String;

    sget v6, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->NETWORK_PORT:I

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;-><init>(Lorg/lasque/tusdk/core/TuSdkConfigs;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->a:Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;

    new-instance v0, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;

    sget-object v11, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->SRV_DOMAIN:Ljava/lang/String;

    sget v12, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->SERVICE_PORT:I

    move-object v7, v0

    move-object v8, p0

    move-object v9, p1

    move-object v10, p2

    invoke-direct/range {v7 .. v12}, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;-><init>(Lorg/lasque/tusdk/core/TuSdkConfigs;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->b:Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;

    new-instance v0, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;

    sget-object v5, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->WEB_API_DOMAIN:Ljava/lang/String;

    sget v6, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->NETWORK_PORT:I

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;-><init>(Lorg/lasque/tusdk/core/TuSdkConfigs;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->c:Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;

    :cond_1
    sget-object p0, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->a:Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;

    return-object p0
.end method

.method public static service()Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->b:Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;

    return-object v0
.end method

.method public static shared()Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->a:Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;

    return-object v0
.end method

.method public static webAPIEngine()Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->c:Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;

    return-object v0
.end method


# virtual methods
.method protected cancelOverseeNetwork()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->l:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->d:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->l:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public get(Ljava/lang/String;Lorg/lasque/tusdk/core/network/TuSdkHttpParams;ZLorg/lasque/tusdk/core/http/ResponseHandlerInterface;)Lorg/lasque/tusdk/core/http/RequestHandle;
    .locals 0

    invoke-virtual {p0, p1, p3}, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->urlBuild(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->a()Lorg/lasque/tusdk/core/network/TuSdkHttp;

    move-result-object p3

    invoke-virtual {p3, p1, p2, p4}, Lorg/lasque/tusdk/core/network/TuSdkHttp;->get(Ljava/lang/String;Lorg/lasque/tusdk/core/http/RequestParams;Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;)Lorg/lasque/tusdk/core/http/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;ZLorg/lasque/tusdk/core/http/ResponseHandlerInterface;)Lorg/lasque/tusdk/core/http/RequestHandle;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->get(Ljava/lang/String;Lorg/lasque/tusdk/core/network/TuSdkHttpParams;ZLorg/lasque/tusdk/core/http/ResponseHandlerInterface;)Lorg/lasque/tusdk/core/http/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public getDevId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getWebUrl(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->WEB_DOMAIN:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, p1}, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->b(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p2, "?"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result p2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    const-string p2, "?"

    goto :goto_0

    :cond_2
    const-string p2, "&"

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "uuid="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->uniqueDeviceID()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->h:Ljava/lang/String;

    if-eqz p2, :cond_3

    const-string p2, "&devid="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->h:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object p2, p0, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->i:Ljava/lang/String;

    if-eqz p2, :cond_4

    const-string p2, "&uid="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->i:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string p2, "&v="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x8

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, p1}, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected onNetworkStateChanged(Z)V
    .locals 3

    const-string v0, "connected: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/TLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected overseeNetwork()V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->l:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine$1;

    invoke-direct {v1, p0}, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine$1;-><init>(Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;)V

    iput-object v1, p0, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->l:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->d:Landroid/content/Context;

    iget-object v2, p0, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public post(Ljava/lang/String;Lorg/lasque/tusdk/core/network/TuSdkHttpParams;ZLorg/lasque/tusdk/core/http/ResponseHandlerInterface;)Lorg/lasque/tusdk/core/http/RequestHandle;
    .locals 0

    invoke-virtual {p0, p1, p3}, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->urlBuild(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->a()Lorg/lasque/tusdk/core/network/TuSdkHttp;

    move-result-object p3

    invoke-virtual {p3, p1, p2, p4}, Lorg/lasque/tusdk/core/network/TuSdkHttp;->post(Ljava/lang/String;Lorg/lasque/tusdk/core/http/RequestParams;Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;)Lorg/lasque/tusdk/core/http/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public post(Ljava/lang/String;ZLorg/lasque/tusdk/core/http/ResponseHandlerInterface;)Lorg/lasque/tusdk/core/http/RequestHandle;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->post(Ljava/lang/String;Lorg/lasque/tusdk/core/network/TuSdkHttpParams;ZLorg/lasque/tusdk/core/http/ResponseHandlerInterface;)Lorg/lasque/tusdk/core/http/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public postService(Ljava/lang/String;Lorg/lasque/tusdk/core/network/TuSdkHttpParams;Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;)Lorg/lasque/tusdk/core/http/RequestHandle;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->serviceUrlBuild(Ljava/lang/String;Lorg/lasque/tusdk/core/network/TuSdkHttpParams;Z)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->a()Lorg/lasque/tusdk/core/network/TuSdkHttp;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/lasque/tusdk/core/network/TuSdkHttp;->post(Ljava/lang/String;Lorg/lasque/tusdk/core/http/RequestParams;Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;)Lorg/lasque/tusdk/core/http/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method public postService(Ljava/lang/String;ZLorg/lasque/tusdk/core/network/TuSdkHttpParams;Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;)Lorg/lasque/tusdk/core/http/RequestHandle;
    .locals 0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p3, p2}, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->serviceUrlBuild(Ljava/lang/String;Lorg/lasque/tusdk/core/network/TuSdkHttpParams;Z)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-direct {p0}, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->a()Lorg/lasque/tusdk/core/network/TuSdkHttp;

    move-result-object p2

    invoke-virtual {p2, p1, p3, p4}, Lorg/lasque/tusdk/core/network/TuSdkHttp;->post(Ljava/lang/String;Lorg/lasque/tusdk/core/http/RequestParams;Lorg/lasque/tusdk/core/http/ResponseHandlerInterface;)Lorg/lasque/tusdk/core/http/RequestHandle;

    move-result-object p1

    return-object p1
.end method

.method protected serviceUrlBuild(Ljava/lang/String;Lorg/lasque/tusdk/core/network/TuSdkHttpParams;Z)Ljava/lang/String;
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->j:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    iget-object p1, p0, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->h:Ljava/lang/String;

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/StringHelper;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "pid"

    invoke-virtual {p2, p3, p1}, Lorg/lasque/tusdk/core/network/TuSdkHttpParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "t"

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lorg/lasque/tusdk/core/network/TuSdkHttpParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "sign"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lorg/lasque/tusdk/core/network/TuSdkHttpParams;->toPairString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->h:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lorg/lasque/tusdk/core/utils/StringHelper;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lorg/lasque/tusdk/core/network/TuSdkHttpParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setUserIdentify(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->i:Ljava/lang/String;

    iget-object p1, p0, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->e:Lorg/lasque/tusdk/core/network/TuSdkHttp;

    const-string v0, "x-client-user"

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/network/TuSdkHttp;->removeHeader(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->i:Ljava/lang/String;

    iget-object p1, p0, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->e:Lorg/lasque/tusdk/core/network/TuSdkHttp;

    const-string v0, "x-client-user"

    iget-object v1, p0, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/lasque/tusdk/core/network/TuSdkHttp;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public uniqueDeviceID()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/core/TuSdkContext;->sharedPreferences()Lorg/lasque/tusdk/core/utils/hardware/TuSdkSharedPreferences;

    move-result-object v0

    const-string v1, "TUSDK_DeviceUUID"

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkSharedPreferences;->loadSharedCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->f:Ljava/lang/String;

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/lasque/tusdk/core/utils/StringHelper;->uuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/StringHelper;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->f:Ljava/lang/String;

    invoke-static {}, Lorg/lasque/tusdk/core/TuSdkContext;->sharedPreferences()Lorg/lasque/tusdk/core/utils/hardware/TuSdkSharedPreferences;

    move-result-object v0

    const-string v1, "TUSDK_DeviceUUID"

    iget-object v2, p0, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkSharedPreferences;->saveSharedCache(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->f:Ljava/lang/String;

    return-object v0
.end method

.method protected urlBuild(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->j:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    invoke-direct {p0, v0, p1}, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-direct {p0, v0, p1}, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->b(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public userIdentify()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkHttpEngine;->i:Ljava/lang/String;

    return-object v0
.end method
