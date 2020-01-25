.class public Lcom/baidu/platform/comapi/util/c;
.super Ljava/lang/Object;


# static fields
.field public static a:Z = false

.field public static b:Ljava/lang/String; = ""

.field public static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 7

    invoke-static {p0}, Lcom/baidu/platform/comapi/util/c;->b(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v2, v3}, Lcom/baidu/platform/comjni/engine/AppEngine;->SetProxyInfo(Ljava/lang/String;I)V

    sput-boolean v3, Lcom/baidu/platform/comapi/util/c;->a:Z

    return-void

    :cond_0
    const-string v1, "mobile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p0}, Lcom/baidu/platform/comapi/util/c;->a(Landroid/net/NetworkInfo;)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object p0

    sput-boolean v3, Lcom/baidu/platform/comapi/util/c;->a:Z

    const/16 v0, 0x50

    const/4 v1, 0x1

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v4, "cmwap"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "uniwap"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "3gwap"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    const-string v4, "ctwap"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    const-string v0, "cmnet"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "uninet"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "ctnet"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "3gnet"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    :cond_4
    sput-boolean v3, Lcom/baidu/platform/comapi/util/c;->a:Z

    goto :goto_4

    :cond_5
    :goto_0
    const-string p0, "10.0.0.172"

    goto :goto_3

    :cond_6
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v4

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_8

    const-string v5, "10.0.0.172"

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string p0, "10.0.0.172"

    sput-object p0, Lcom/baidu/platform/comapi/util/c;->b:Ljava/lang/String;

    sput v4, Lcom/baidu/platform/comapi/util/c;->c:I

    :goto_1
    sput-boolean v1, Lcom/baidu/platform/comapi/util/c;->a:Z

    goto :goto_4

    :cond_7
    const-string v4, "10.0.0.200"

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    :goto_2
    const-string p0, "10.0.0.200"

    :goto_3
    sput-object p0, Lcom/baidu/platform/comapi/util/c;->b:Ljava/lang/String;

    sput v0, Lcom/baidu/platform/comapi/util/c;->c:I

    goto :goto_1

    :cond_8
    :goto_4
    sget-boolean p0, Lcom/baidu/platform/comapi/util/c;->a:Z

    if-ne p0, v1, :cond_9

    sget-object p0, Lcom/baidu/platform/comapi/util/c;->b:Ljava/lang/String;

    sget v0, Lcom/baidu/platform/comapi/util/c;->c:I

    invoke-static {p0, v0}, Lcom/baidu/platform/comjni/engine/AppEngine;->SetProxyInfo(Ljava/lang/String;I)V

    goto :goto_5

    :cond_9
    invoke-static {v2, v3}, Lcom/baidu/platform/comjni/engine/AppEngine;->SetProxyInfo(Ljava/lang/String;I)V

    :cond_a
    :goto_5
    return-void
.end method

.method private static a(Landroid/net/NetworkInfo;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return v1
.end method

.method public static b(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 1

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    :try_start_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/baidu/platform/comapi/util/c;->b(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v1, 0xa

    goto :goto_1

    :pswitch_1
    const/4 v1, 0x4

    goto :goto_1

    :pswitch_2
    const/4 v1, 0x2

    goto :goto_1

    :pswitch_3
    const/16 v1, 0x8

    goto :goto_1

    :pswitch_4
    const/4 v1, 0x7

    goto :goto_1

    :pswitch_5
    const/4 v1, 0x5

    goto :goto_1

    :pswitch_6
    const/16 v1, 0x9

    goto :goto_1

    :pswitch_7
    const/4 v1, 0x6

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method
