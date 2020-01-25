.class public Lcom/baidu/location/b/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/location/b/f;


# static fields
.field public static b0:I = 0x0

.field public static b1:I = 0x0

.field public static b2:[B = null

.field public static b3:I = 0x3

.field public static b4:D = 0.0

.field private static b5:Ljava/lang/String; = "http://loc.map.baidu.com/tcu.php"

.field private static b6:Ljava/lang/String; = "http://loc.map.baidu.com/user_err.php"

.field public static b7:I = 0x3

.field public static b8:I = 0x64

.field public static b9:I = 0x1e

.field private static bE:Ljava/lang/String; = "http://loc.map.baidu.com/iofd.php"

.field public static bF:F = 0.5f

.field public static bG:D = 0.0

.field public static bH:I = 0x14

.field public static bI:I = 0x7530

.field public static bJ:I = 0x7

.field public static bK:Z = true

.field public static bL:F = 0.9f

.field public static bM:I = 0x7530

.field private static bN:Ljava/lang/String; = "http://loc.map.baidu.com/sdk.php"

.field public static bO:I = 0x6

.field public static bP:Z = false

.field public static bQ:I = 0x78

.field public static bR:Z = true

.field public static bS:Z = false

.field public static bT:I = 0x3e8

.field private static bU:Ljava/lang/String; = "http://loc.map.baidu.com/oqur.php"

.field private static bV:Ljava/lang/String; = "http://loc.map.baidu.com/wloc"

.field public static bW:F = 2.2f

.field public static bX:Z = false

.field public static bY:Z = false

.field private static bZ:Ljava/lang/String; = "https://sapi.skyhookwireless.com/wps2/location"

.field public static cA:F = 3.8f

.field public static cB:I = 0x14

.field public static cC:I = 0x2

.field public static cD:I = 0x10

.field public static cE:D = 0.0

.field public static cF:I = 0x12c

.field public static cG:Z = false

.field public static cH:J = 0xfL

.field public static cI:I = 0x46

.field public static cJ:J = 0x668a0L

.field public static cK:I = 0x46

.field public static cL:I = 0x0

.field public static cM:Z = false

.field public static cN:Ljava/lang/String; = "gcj02"

.field public static cO:F = 50.0f

.field public static cP:J = 0x493e0L

.field public static cQ:F = 1.1f

.field public static ca:F = 0.1f

.field public static cb:F = 0.0f

.field public static cc:I = 0x3c

.field public static cd:F = 6.0f

.field public static final ce:Z = true

.field public static cf:Ljava/lang/String; = "no"

.field public static cg:F = 10.0f

.field public static ch:F = 2.0f

.field public static ci:Z = false

.field public static cj:Z = false

.field public static ck:F = 2.3f

.field public static cl:Z = true

.field public static cm:Z = false

.field public static cn:F = 10.0f

.field public static co:I = 0x0

.field public static cp:D = 0.0

.field public static cq:I = 0xa

.field public static cr:I = 0x3e8

.field public static cs:J = 0xdbba0L

.field public static ct:J = 0x0L

.field public static cu:J = 0x2bf20L

.field public static cv:Ljava/lang/String; = "http://loc.map.baidu.com/sdk_ep.php"

.field public static cw:I = 0x668a0

.field public static cx:F = 200.0f

.field public static cy:I = 0x2710

.field public static cz:F = 10.0f


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static X()Ljava/lang/String;
    .locals 13

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/2addr v6, v3

    const/16 v7, 0xb

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/16 v8, 0xc

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/16 v9, 0xd

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sget-object v9, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v10, "%d_%d_%d_%d_%d_%d"

    const/4 v11, 0x6

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v12, 0x0

    aput-object v4, v11, v12

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v11, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v11, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v11, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v11, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v11, v1

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static Y()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/location/b/k;->bU:Ljava/lang/String;

    return-object v0
.end method

.method public static Z()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/location/b/k;->bN:Ljava/lang/String;

    return-object v0
.end method

.method public static aa()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/location/b/k;->bV:Ljava/lang/String;

    return-object v0
.end method

.method public static ab()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/location/b/k;->bZ:Ljava/lang/String;

    return-object v0
.end method

.method public static ac()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/location/b/k;->b5:Ljava/lang/String;

    return-object v0
.end method

.method public static ad()Ljava/lang/String;
    .locals 13

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/2addr v6, v3

    const/16 v7, 0xb

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/16 v8, 0xc

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/16 v9, 0xd

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sget-object v9, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v10, "%d-%02d-%02d %02d:%02d:%02d"

    const/4 v11, 0x6

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v12, 0x0

    aput-object v4, v11, v12

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v11, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v11, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v11, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v11, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v11, v1

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ae()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/location/b/k;->b6:Ljava/lang/String;

    return-object v0
.end method

.method public static af()Ljava/lang/String;
    .locals 4

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/baidu/tempdata"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    :cond_1
    return-object v1
.end method

.method public static ag()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/location/b/k;->bE:Ljava/lang/String;

    return-object v0
.end method

.method public static ah()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/baidu/location/b/k;->af()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/baidu/tempdata"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ai()Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "lldt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static do(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)F
    .locals 3

    const/4 v0, 0x1

    if-eqz p0, :cond_4

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v1, p1

    invoke-virtual {p0, p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v2, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_4
    :goto_0
    return v0
.end method

.method public static do(Lcom/baidu/location/BDLocation;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result p0

    const/16 v0, 0x64

    if-le p0, v0, :cond_0

    const/16 v0, 0xc8

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static for(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const/high16 v0, -0x80000000

    if-eqz p0, :cond_4

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v1, p1

    invoke-virtual {p0, p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v2, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_4
    :goto_0
    return v0
.end method

.method public static for(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    move v1, v0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static if(Lcom/baidu/location/h/h;Lcom/baidu/location/h/f;Landroid/location/Location;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/baidu/location/h/b;->cU()Lcom/baidu/location/h/b;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/baidu/location/h/b;->new(Lcom/baidu/location/h/h;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    if-eqz p1, :cond_1

    const/4 v1, 0x5

    :try_start_0
    invoke-virtual {p1, v1}, Lcom/baidu/location/h/f;->e(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    if-eqz p2, :cond_3

    sget p1, Lcom/baidu/location/b/k;->b1:I

    if-eqz p1, :cond_2

    invoke-static {p2}, Lcom/baidu/location/h/a;->else(Landroid/location/Location;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-static {p2}, Lcom/baidu/location/h/a;->goto(Landroid/location/Location;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    invoke-static {}, Lcom/baidu/location/b/c;->N()Lcom/baidu/location/b/c;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/baidu/location/b/c;->do(Z)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    if-eqz p0, :cond_6

    invoke-static {}, Lcom/baidu/location/h/c;->a()Lcom/baidu/location/h/j;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/baidu/location/h/j;->int(Lcom/baidu/location/h/h;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p2

    add-int/2addr p1, p2

    const/16 p2, 0x2ee

    if-ge p1, p2, :cond_6

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static if(Lcom/baidu/location/h/h;Lcom/baidu/location/h/f;Landroid/location/Location;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/baidu/location/h/b;->cU()Lcom/baidu/location/h/b;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/baidu/location/h/b;->new(Lcom/baidu/location/h/h;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    if-eqz p1, :cond_2

    if-nez p4, :cond_1

    invoke-virtual {p1}, Lcom/baidu/location/h/f;->dp()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/baidu/location/h/f;->dk()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    if-eqz p2, :cond_4

    sget v1, Lcom/baidu/location/b/k;->b1:I

    if-eqz v1, :cond_3

    if-eqz p4, :cond_3

    invoke-static {p2}, Lcom/baidu/location/h/a;->else(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lcom/baidu/location/h/a;->goto(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p4, :cond_5

    move v1, v2

    :cond_5
    invoke-static {}, Lcom/baidu/location/b/c;->N()Lcom/baidu/location/b/c;

    move-result-object p4

    invoke-virtual {p4, v1}, Lcom/baidu/location/b/c;->do(Z)Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_6

    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    if-eqz p3, :cond_7

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    invoke-static {}, Lcom/baidu/location/e/e;->bv()Lcom/baidu/location/e/e;

    move-result-object p3

    invoke-virtual {p3}, Lcom/baidu/location/e/e;->bu()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_8

    const-string p4, "&bc="

    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8
    if-eqz p0, :cond_9

    invoke-static {}, Lcom/baidu/location/h/c;->a()Lcom/baidu/location/h/j;

    move-result-object p3

    invoke-virtual {p3, p0}, Lcom/baidu/location/h/j;->int(Lcom/baidu/location/h/h;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p4

    add-int/2addr p3, p4

    const/16 p4, 0x2ee

    if-ge p3, p4, :cond_9

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p3, 0x3

    if-eqz p2, :cond_f

    if-eqz p1, :cond_f

    :try_start_0
    invoke-virtual {p2}, Landroid/location/Location;->getSpeed()F

    move-result p2

    sget p4, Lcom/baidu/location/b/k;->b1:I

    invoke-virtual {p1}, Lcom/baidu/location/h/f;->df()I

    move-result v0

    invoke-virtual {p1}, Lcom/baidu/location/h/f;->dl()I

    move-result v1

    invoke-virtual {p1}, Lcom/baidu/location/h/f;->dh()Z

    move-result p1

    sget v3, Lcom/baidu/location/b/k;->cd:F

    cmpg-float v3, p2, v3

    if-gez v3, :cond_c

    if-eq p4, v2, :cond_a

    if-nez p4, :cond_c

    :cond_a
    sget v3, Lcom/baidu/location/b/k;->cc:I

    if-lt v0, v3, :cond_b

    if-ne p1, v2, :cond_c

    :cond_b
    sput v2, Lcom/baidu/location/b/k;->b3:I

    goto :goto_2

    :cond_c
    sget p1, Lcom/baidu/location/b/k;->cz:F

    cmpg-float p1, p2, p1

    if-gez p1, :cond_f

    if-eq p4, v2, :cond_d

    if-eqz p4, :cond_d

    if-ne p4, p3, :cond_f

    :cond_d
    sget p1, Lcom/baidu/location/b/k;->cK:I

    if-lt v0, p1, :cond_e

    sget p1, Lcom/baidu/location/b/k;->bO:I

    if-le v1, p1, :cond_f

    :cond_e
    const/4 p1, 0x2

    sput p1, Lcom/baidu/location/b/k;->b3:I

    goto :goto_2

    :cond_f
    sput p3, Lcom/baidu/location/b/k;->b3:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    sput p3, Lcom/baidu/location/b/k;->b3:I

    :goto_2
    return-object p0
.end method

.method public static if(Ljava/io/File;)Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/16 v0, 0x400

    new-array v2, v0, [B

    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :goto_0
    const/4 p0, 0x0

    invoke-virtual {v4, v2, p0, v0}, Ljava/io/FileInputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    invoke-virtual {v3, v2, p0, v5}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p0, Ljava/math/BigInteger;

    const/4 v0, 0x1

    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method static if(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v1, p1

    invoke-virtual {p0, p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v2, :cond_2

    return-object v0

    :cond_2
    const/4 p2, 0x0

    invoke-virtual {p0, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v1, "%.7f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    aput-object p3, v2, p2

    invoke-static {p1, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    return-object v0
.end method

.method static int(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)D
    .locals 4

    const-wide/16 v0, 0x1

    if-eqz p0, :cond_4

    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    return-wide v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v2, p1

    invoke-virtual {p0, p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v3, :cond_2

    return-wide v0

    :cond_2
    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    :cond_4
    :goto_0
    return-wide v0
.end method
