.class public abstract Lcom/baidu/location/b/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/location/b/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/b/m$a;
    }
.end annotation


# static fields
.field public static c8:I

.field private static dd:Ljava/lang/String;

.field protected static de:I

.field private static df:I


# instance fields
.field public c5:Ljava/lang/String;

.field public c6:Lorg/apache/http/HttpEntity;

.field public c7:Ljava/util/List;

.field private c9:Z

.field public da:Ljava/lang/String;

.field public db:[B

.field public dc:Ljava/lang/String;

.field public dg:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/baidu/location/b/g;->w:I

    sput v0, Lcom/baidu/location/b/m;->c8:I

    const-string v0, "10.0.0.172"

    sput-object v0, Lcom/baidu/location/b/m;->dd:Ljava/lang/String;

    const/16 v0, 0x50

    sput v0, Lcom/baidu/location/b/m;->df:I

    const/4 v0, 0x0

    sput v0, Lcom/baidu/location/b/m;->de:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/b/m;->c9:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/b/m;->c5:Ljava/lang/String;

    const/4 v1, 0x3

    iput v1, p0, Lcom/baidu/location/b/m;->dg:I

    iput-object v0, p0, Lcom/baidu/location/b/m;->c6:Lorg/apache/http/HttpEntity;

    iput-object v0, p0, Lcom/baidu/location/b/m;->c7:Ljava/util/List;

    iput-object v0, p0, Lcom/baidu/location/b/m;->dc:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/b/m;->db:[B

    iput-object v0, p0, Lcom/baidu/location/b/m;->da:Ljava/lang/String;

    return-void
.end method

.method static synthetic al()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/location/b/m;->dd:Ljava/lang/String;

    return-object v0
.end method

.method private am()V
    .locals 1

    invoke-direct {p0}, Lcom/baidu/location/b/m;->aq()I

    move-result v0

    sput v0, Lcom/baidu/location/b/m;->c8:I

    return-void
.end method

.method private aq()I
    .locals 4

    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v0

    :try_start_0
    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-nez v1, :cond_0

    sget v0, Lcom/baidu/location/b/g;->w:I

    return v0

    :cond_0
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    sget v0, Lcom/baidu/location/b/g;->p:I

    return v0

    :cond_2
    sget v0, Lcom/baidu/location/b/g;->o:I

    return v0

    :cond_3
    invoke-static {v0, v1}, Lcom/baidu/location/b/m;->if(Landroid/content/Context;Landroid/net/NetworkInfo;)I

    move-result v0

    return v0

    :cond_4
    :goto_0
    sget v0, Lcom/baidu/location/b/g;->w:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    sget v0, Lcom/baidu/location/b/g;->w:I

    return v0
.end method

.method static synthetic ar()I
    .locals 1

    sget v0, Lcom/baidu/location/b/m;->df:I

    return v0
.end method

.method private static if(Landroid/content/Context;Landroid/net/NetworkInfo;)I
    .locals 1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    const-string p1, "cmwap"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "uniwap"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "3gwap"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    const-string p1, "ctwap"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_7

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "null"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    :goto_0
    sput-object p0, Lcom/baidu/location/b/m;->dd:Ljava/lang/String;

    sget p0, Lcom/baidu/location/b/g;->byte:I

    return p0

    :cond_1
    const-string p1, "cmnet"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "uninet"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "ctnet"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "3gnet"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_2
    sget p0, Lcom/baidu/location/b/g;->for:I

    return p0

    :cond_3
    :goto_1
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "null"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_4
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_8

    const-string p1, "10.0.0.172"

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    const-string p0, "10.0.0.172"

    goto :goto_0

    :cond_6
    const-string p1, "10.0.0.200"

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    :cond_7
    const-string p0, "10.0.0.200"

    goto :goto_0

    :cond_8
    sget p0, Lcom/baidu/location/b/g;->for:I

    return p0
.end method

.method public static if(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/client/HttpClient;
    .locals 6

    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    new-instance v1, Lcom/baidu/location/b/m$a;

    invoke-direct {v1, v0}, Lcom/baidu/location/b/m$a;-><init>(Ljava/security/KeyStore;)V

    sget-object v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v1, v0}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    sget-object v0, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {p0, v0}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    const/16 v4, 0x1bb

    invoke-direct {v2, v3, v1, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v1, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v1, p0, v0}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v1, p0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, p0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    return-object v0
.end method

.method static synthetic if(Lcom/baidu/location/b/m;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/b/m;->am()V

    return-void
.end method

.method static synthetic if(Lcom/baidu/location/b/m;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/b/m;->c9:Z

    return p1
.end method

.method public static int(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p0

    :catch_0
    :cond_0
    return v0
.end method


# virtual methods
.method public an()V
    .locals 1

    new-instance v0, Lcom/baidu/location/b/t;

    invoke-direct {v0, p0}, Lcom/baidu/location/b/t;-><init>(Lcom/baidu/location/b/m;)V

    invoke-virtual {v0}, Lcom/baidu/location/b/t;->start()V

    return-void
.end method

.method public ao()V
    .locals 1

    new-instance v0, Lcom/baidu/location/b/r;

    invoke-direct {v0, p0}, Lcom/baidu/location/b/r;-><init>(Lcom/baidu/location/b/m;)V

    invoke-virtual {v0}, Lcom/baidu/location/b/r;->start()V

    return-void
.end method

.method public ap()V
    .locals 1

    new-instance v0, Lcom/baidu/location/b/q;

    invoke-direct {v0, p0}, Lcom/baidu/location/b/q;-><init>(Lcom/baidu/location/b/m;)V

    invoke-virtual {v0}, Lcom/baidu/location/b/q;->start()V

    return-void
.end method

.method public as()V
    .locals 1

    new-instance v0, Lcom/baidu/location/b/p;

    invoke-direct {v0, p0}, Lcom/baidu/location/b/p;-><init>(Lcom/baidu/location/b/m;)V

    invoke-virtual {v0}, Lcom/baidu/location/b/p;->start()V

    return-void
.end method

.method public at()V
    .locals 1

    new-instance v0, Lcom/baidu/location/b/s;

    invoke-direct {v0, p0}, Lcom/baidu/location/b/s;-><init>(Lcom/baidu/location/b/m;)V

    invoke-virtual {v0}, Lcom/baidu/location/b/s;->start()V

    return-void
.end method

.method public abstract au()V
.end method

.method public av()V
    .locals 1

    new-instance v0, Lcom/baidu/location/b/u;

    invoke-direct {v0, p0}, Lcom/baidu/location/b/u;-><init>(Lcom/baidu/location/b/m;)V

    invoke-virtual {v0}, Lcom/baidu/location/b/u;->start()V

    return-void
.end method

.method public abstract int(Z)V
.end method
