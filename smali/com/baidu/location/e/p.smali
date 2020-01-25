.class public Lcom/baidu/location/e/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/location/b/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/e/p$c;,
        Lcom/baidu/location/e/p$b;,
        Lcom/baidu/location/e/p$d;,
        Lcom/baidu/location/e/p$a;
    }
.end annotation


# static fields
.field private static i1:Ljava/lang/reflect/Method;

.field private static i3:Ljava/lang/Class;

.field private static iU:Ljava/lang/reflect/Method;

.field private static iX:Ljava/lang/reflect/Method;


# instance fields
.field i0:Lcom/baidu/location/e/p$d;

.field private i2:Lcom/baidu/location/LocationClientOption;

.field private iQ:Lcom/baidu/location/e/p$a;

.field private iR:Ljava/lang/String;

.field private iS:Lcom/baidu/location/e/p$b;

.field private iT:Landroid/content/Context;

.field private iV:Ljava/lang/String;

.field private iW:Landroid/telephony/TelephonyManager;

.field private iY:Lcom/baidu/location/e/p$c;

.field private iZ:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/baidu/location/LocationClientOption;Lcom/baidu/location/e/p$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/e/p;->iT:Landroid/content/Context;

    iput-object v0, p0, Lcom/baidu/location/e/p;->iW:Landroid/telephony/TelephonyManager;

    new-instance v1, Lcom/baidu/location/e/p$b;

    invoke-direct {v1, p0, v0}, Lcom/baidu/location/e/p$b;-><init>(Lcom/baidu/location/e/p;Lcom/baidu/location/e/p$1;)V

    iput-object v1, p0, Lcom/baidu/location/e/p;->iS:Lcom/baidu/location/e/p$b;

    iput-object v0, p0, Lcom/baidu/location/e/p;->iZ:Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/baidu/location/e/p;->iY:Lcom/baidu/location/e/p$c;

    iput-object v0, p0, Lcom/baidu/location/e/p;->iR:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/e/p;->iV:Ljava/lang/String;

    new-instance v1, Lcom/baidu/location/e/p$d;

    invoke-direct {v1, p0}, Lcom/baidu/location/e/p$d;-><init>(Lcom/baidu/location/e/p;)V

    iput-object v1, p0, Lcom/baidu/location/e/p;->i0:Lcom/baidu/location/e/p$d;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/location/e/p;->iT:Landroid/content/Context;

    iput-object p2, p0, Lcom/baidu/location/e/p;->i2:Lcom/baidu/location/LocationClientOption;

    iput-object p3, p0, Lcom/baidu/location/e/p;->iQ:Lcom/baidu/location/e/p$a;

    iget-object p1, p0, Lcom/baidu/location/e/p;->iT:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    iget-object p3, p0, Lcom/baidu/location/e/p;->iT:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {p3, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telephony/TelephonyManager;

    iput-object p3, p0, Lcom/baidu/location/e/p;->iW:Landroid/telephony/TelephonyManager;

    iget-object p3, p0, Lcom/baidu/location/e/p;->iW:Landroid/telephony/TelephonyManager;

    invoke-virtual {p3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p3, v0

    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/baidu/location/e/p;->iT:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/location/f/a/a;->if(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    if-eqz v0, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&prod="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/location/e/p;->i2:Lcom/baidu/location/LocationClientOption;

    iget-object v1, v1, Lcom/baidu/location/LocationClientOption;->prodName:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "|&cu="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&coor="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/baidu/location/LocationClientOption;->getCoorType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&prod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/location/e/p;->i2:Lcom/baidu/location/LocationClientOption;

    iget-object v1, v1, Lcom/baidu/location/LocationClientOption;->prodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "|&im="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&coor="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/baidu/location/LocationClientOption;->getCoorType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/baidu/location/e/p;->iR:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuffer;

    const/16 p3, 0x100

    invoke-direct {p1, p3}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string p3, "&fw="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, "6.13"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, "&lt=1"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, "&mb="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object p3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, "&resid="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, "12"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Lcom/baidu/location/LocationClientOption;->getAddrType()Ljava/lang/String;

    invoke-virtual {p2}, Lcom/baidu/location/LocationClientOption;->getAddrType()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Lcom/baidu/location/LocationClientOption;->getAddrType()Ljava/lang/String;

    move-result-object p3

    const-string v0, "all"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/baidu/location/e/p;->iR:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&addr=all"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/baidu/location/e/p;->iR:Ljava/lang/String;

    :cond_1
    iget-boolean p3, p2, Lcom/baidu/location/LocationClientOption;->isNeedAptag:Z

    const/4 v0, 0x1

    if-eq p3, v0, :cond_2

    iget-boolean p3, p2, Lcom/baidu/location/LocationClientOption;->isNeedAptagd:Z

    if-ne p3, v0, :cond_4

    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/location/e/p;->iR:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&sema="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/baidu/location/e/p;->iR:Ljava/lang/String;

    iget-boolean p3, p2, Lcom/baidu/location/LocationClientOption;->isNeedAptag:Z

    if-ne p3, v0, :cond_3

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/location/e/p;->iR:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "aptag|"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/baidu/location/e/p;->iR:Ljava/lang/String;

    :cond_3
    iget-boolean p2, p2, Lcom/baidu/location/LocationClientOption;->isNeedAptagd:Z

    if-ne p2, v0, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/baidu/location/e/p;->iR:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "aptagd|"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/baidu/location/e/p;->iR:Ljava/lang/String;

    :cond_4
    const-string p2, "&first=1"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object p2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/baidu/location/e/p;->iR:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/location/e/p;->iR:Ljava/lang/String;

    iget-object p1, p0, Lcom/baidu/location/e/p;->iT:Landroid/content/Context;

    const-string p2, "wifi"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/baidu/location/e/p;->iZ:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Lcom/baidu/location/e/p;->cr()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, ":"

    const-string p3, ""

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/baidu/location/e/p;->iR:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&mac="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/location/e/p;->iR:Ljava/lang/String;

    :cond_6
    invoke-virtual {p0}, Lcom/baidu/location/e/p;->cq()Ljava/lang/String;

    return-void
.end method

.method private char(I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/baidu/location/e/p;->iW:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/baidu/location/e/p;->if(Landroid/telephony/CellLocation;)V

    iget-object v1, p0, Lcom/baidu/location/e/p;->iS:Lcom/baidu/location/e/p$b;

    invoke-virtual {v1}, Lcom/baidu/location/e/p$b;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v0

    :goto_0
    :try_start_1
    iput-object v0, p0, Lcom/baidu/location/e/p;->iY:Lcom/baidu/location/e/p$c;

    new-instance v2, Lcom/baidu/location/e/p$c;

    iget-object v3, p0, Lcom/baidu/location/e/p;->iZ:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/baidu/location/e/p$c;-><init>(Lcom/baidu/location/e/p;Ljava/util/List;)V

    iput-object v2, p0, Lcom/baidu/location/e/p;->iY:Lcom/baidu/location/e/p$c;

    iget-object v2, p0, Lcom/baidu/location/e/p;->iY:Lcom/baidu/location/e/p$c;

    invoke-virtual {v2, p1}, Lcom/baidu/location/e/p$c;->a(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-object p1, v0

    :goto_1
    if-nez v1, :cond_1

    if-nez p1, :cond_1

    iput-object v0, p0, Lcom/baidu/location/e/p;->iV:Ljava/lang/String;

    return-object v0

    :cond_1
    if-eqz p1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    if-nez v1, :cond_3

    return-object v0

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/baidu/location/e/p;->iR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/location/e/p;->iV:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/baidu/location/e/p;->iR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic do(Lcom/baidu/location/e/p;)Lcom/baidu/location/LocationClientOption;
    .locals 0

    iget-object p0, p0, Lcom/baidu/location/e/p;->i2:Lcom/baidu/location/LocationClientOption;

    return-object p0
.end method

.method static synthetic if(Lcom/baidu/location/e/p;)Lcom/baidu/location/e/p$a;
    .locals 0

    iget-object p0, p0, Lcom/baidu/location/e/p;->iQ:Lcom/baidu/location/e/p$a;

    return-object p0
.end method

.method private if(Landroid/telephony/CellLocation;)V
    .locals 7

    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/baidu/location/e/p;->iW:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    new-instance v0, Lcom/baidu/location/e/p$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/location/e/p$b;-><init>(Lcom/baidu/location/e/p;Lcom/baidu/location/e/p$1;)V

    iget-object v2, p0, Lcom/baidu/location/e/p;->iW:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_7

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-lt v4, v5, :cond_2

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gez v4, :cond_1

    iget-object v4, p0, Lcom/baidu/location/e/p;->iS:Lcom/baidu/location/e/p$b;

    iget v4, v4, Lcom/baidu/location/e/p$b;->c:I

    :cond_1
    iput v4, v0, Lcom/baidu/location/e/p$b;->c:I

    :cond_2
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    move v5, v3

    :goto_0
    array-length v6, v4

    if-ge v5, v6, :cond_5

    aget-char v6, v4, v5

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    move v5, v3

    :cond_5
    :goto_1
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v2, :cond_6

    iget-object v2, p0, Lcom/baidu/location/e/p;->iS:Lcom/baidu/location/e/p$b;

    iget v2, v2, Lcom/baidu/location/e/p$b;->d:I

    :cond_6
    iput v2, v0, Lcom/baidu/location/e/p$b;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_7
    instance-of v2, p1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v2, :cond_8

    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    iput v1, v0, Lcom/baidu/location/e/p$b;->a:I

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result p1

    iput p1, v0, Lcom/baidu/location/e/p$b;->b:I

    const/16 p1, 0x67

    iput-char p1, v0, Lcom/baidu/location/e/p$b;->e:C

    goto/16 :goto_3

    :cond_8
    instance-of v2, p1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v2, :cond_b

    const/16 v2, 0x63

    iput-char v2, v0, Lcom/baidu/location/e/p$b;->e:C

    sget-object v2, Lcom/baidu/location/e/p;->i3:Ljava/lang/Class;

    if-nez v2, :cond_9

    :try_start_1
    const-string v2, "android.telephony.cdma.CdmaCellLocation"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/baidu/location/e/p;->i3:Ljava/lang/Class;

    sget-object v2, Lcom/baidu/location/e/p;->i3:Ljava/lang/Class;

    const-string v4, "getBaseStationId"

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/baidu/location/e/p;->i1:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/baidu/location/e/p;->i3:Ljava/lang/Class;

    const-string v4, "getNetworkId"

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/baidu/location/e/p;->iX:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/baidu/location/e/p;->i3:Ljava/lang/Class;

    const-string v4, "getSystemId"

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/baidu/location/e/p;->iU:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    sput-object v1, Lcom/baidu/location/e/p;->i3:Ljava/lang/Class;

    return-void

    :cond_9
    :goto_2
    sget-object v1, Lcom/baidu/location/e/p;->i3:Ljava/lang/Class;

    if-eqz v1, :cond_b

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    :try_start_2
    sget-object v1, Lcom/baidu/location/e/p;->iU:Ljava/lang/reflect/Method;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_a

    iget-object v1, p0, Lcom/baidu/location/e/p;->iS:Lcom/baidu/location/e/p$b;

    iget v1, v1, Lcom/baidu/location/e/p$b;->d:I

    :cond_a
    iput v1, v0, Lcom/baidu/location/e/p$b;->d:I

    sget-object v1, Lcom/baidu/location/e/p;->i1:Ljava/lang/reflect/Method;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/baidu/location/e/p$b;->b:I

    sget-object v1, Lcom/baidu/location/e/p;->iX:Ljava/lang/reflect/Method;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lcom/baidu/location/e/p$b;->a:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    return-void

    :cond_b
    :goto_3
    invoke-static {v0}, Lcom/baidu/location/e/p$b;->a(Lcom/baidu/location/e/p$b;)Z

    move-result p1

    if-eqz p1, :cond_c

    iput-object v0, p0, Lcom/baidu/location/e/p;->iS:Lcom/baidu/location/e/p$b;

    :cond_c
    :goto_4
    return-void
.end method


# virtual methods
.method public case(I)Ljava/lang/String;
    .locals 0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/baidu/location/e/p;->char(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public cp()V
    .locals 10

    iget-object v0, p0, Lcom/baidu/location/e/p;->iV:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/e/p;->iS:Lcom/baidu/location/e/p$b;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/baidu/location/e/p$b;->a()I

    move-result v0

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/baidu/location/e/p;->i2:Lcom/baidu/location/LocationClientOption;

    iget v2, v2, Lcom/baidu/location/LocationClientOption;->scanSpan:I

    const/16 v3, 0x3e8

    if-lt v2, v3, :cond_3

    iget-object v2, p0, Lcom/baidu/location/e/p;->i2:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {v2}, Lcom/baidu/location/LocationClientOption;->getAddrType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "all"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/baidu/location/e/p;->i2:Lcom/baidu/location/LocationClientOption;

    iget-boolean v2, v2, Lcom/baidu/location/LocationClientOption;->isNeedAptag:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/baidu/location/e/p;->i2:Lcom/baidu/location/LocationClientOption;

    iget-boolean v2, v2, Lcom/baidu/location/LocationClientOption;->isNeedAptagd:Z

    if-nez v2, :cond_3

    invoke-static {}, Lcom/baidu/location/c/b;->aZ()Lcom/baidu/location/c/b;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/location/e/p;->iS:Lcom/baidu/location/e/p$b;

    invoke-virtual {v2}, Lcom/baidu/location/e/p$b;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/location/e/p;->iZ:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/baidu/location/c/b;->if(Ljava/lang/String;Ljava/util/List;Z)Lcom/baidu/location/BDLocation;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/location/e/p;->i2:Lcom/baidu/location/LocationClientOption;

    iget-object v2, v2, Lcom/baidu/location/LocationClientOption;->coorType:Ljava/lang/String;

    const-string v3, "gcj02"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v5

    const-wide/16 v7, 0x1

    cmpl-double v9, v2, v7

    if-eqz v9, :cond_2

    cmpl-double v7, v5, v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/baidu/location/e/p;->i2:Lcom/baidu/location/LocationClientOption;

    iget-object v7, v7, Lcom/baidu/location/LocationClientOption;->coorType:Ljava/lang/String;

    invoke-static {v2, v3, v5, v6, v7}, Lcom/baidu/location/Jni;->if(DDLjava/lang/String;)[D

    move-result-object v2

    aget-wide v3, v2, v4

    invoke-virtual {v0, v3, v4}, Lcom/baidu/location/BDLocation;->setLongitude(D)V

    aget-wide v1, v2, v1

    invoke-virtual {v0, v1, v2}, Lcom/baidu/location/BDLocation;->setLatitude(D)V

    iget-object v1, p0, Lcom/baidu/location/e/p;->i2:Lcom/baidu/location/LocationClientOption;

    iget-object v1, v1, Lcom/baidu/location/LocationClientOption;->coorType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/location/BDLocation;->setCoorType(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v1

    const/16 v2, 0x42

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/baidu/location/e/p;->iQ:Lcom/baidu/location/e/p$a;

    invoke-interface {v1, v0}, Lcom/baidu/location/e/p$a;->onReceiveLocation(Lcom/baidu/location/BDLocation;)V

    :cond_3
    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/baidu/location/e/p;->i0:Lcom/baidu/location/e/p$d;

    iget-object v1, p0, Lcom/baidu/location/e/p;->iV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/location/e/p$d;->a(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public cq()Ljava/lang/String;
    .locals 1

    const/16 v0, 0xf

    :try_start_0
    invoke-direct {p0, v0}, Lcom/baidu/location/e/p;->char(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public cr()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/baidu/location/e/p;->iZ:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method
