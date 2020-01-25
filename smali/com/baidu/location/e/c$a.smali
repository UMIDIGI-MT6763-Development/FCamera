.class Lcom/baidu/location/e/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/e/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Landroid/os/Messenger;

.field public c:Lcom/baidu/location/LocationClientOption;

.field public d:I

.field final synthetic e:Lcom/baidu/location/e/c;


# direct methods
.method public constructor <init>(Lcom/baidu/location/e/c;Landroid/os/Message;)V
    .locals 4

    iput-object p1, p0, Lcom/baidu/location/e/c$a;->e:Lcom/baidu/location/e/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/baidu/location/e/c$a;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/baidu/location/e/c$a;->b:Landroid/os/Messenger;

    new-instance p1, Lcom/baidu/location/LocationClientOption;

    invoke-direct {p1}, Lcom/baidu/location/LocationClientOption;-><init>()V

    iput-object p1, p0, Lcom/baidu/location/e/c$a;->c:Lcom/baidu/location/LocationClientOption;

    const/4 p1, 0x0

    iput p1, p0, Lcom/baidu/location/e/c$a;->d:I

    iget-object v0, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iput-object v0, p0, Lcom/baidu/location/e/c$a;->b:Landroid/os/Messenger;

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "packName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/e/c$a;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/e/c$a;->c:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "prodName"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/location/LocationClientOption;->prodName:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/location/b/c;->N()Lcom/baidu/location/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/e/c$a;->c:Lcom/baidu/location/LocationClientOption;

    iget-object v1, v1, Lcom/baidu/location/LocationClientOption;->prodName:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/location/e/c$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/location/b/c;->if(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/e/c$a;->c:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "coorType"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/location/LocationClientOption;->coorType:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/e/c$a;->c:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "addrType"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/location/LocationClientOption;->addrType:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/e/c$a;->c:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "enableSimulateGps"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/baidu/location/LocationClientOption;->enableSimulateGps:Z

    sget-boolean v0, Lcom/baidu/location/b/k;->cj:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/e/c$a;->c:Lcom/baidu/location/LocationClientOption;

    iget-boolean v0, v0, Lcom/baidu/location/LocationClientOption;->enableSimulateGps:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, p1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/baidu/location/b/k;->cj:Z

    sget-object v0, Lcom/baidu/location/b/k;->cf:Ljava/lang/String;

    const-string v2, "all"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/baidu/location/e/c$a;->c:Lcom/baidu/location/LocationClientOption;

    iget-object v0, v0, Lcom/baidu/location/LocationClientOption;->addrType:Ljava/lang/String;

    sput-object v0, Lcom/baidu/location/b/k;->cf:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/baidu/location/e/c$a;->c:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "openGPS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/baidu/location/LocationClientOption;->openGps:Z

    iget-object v0, p0, Lcom/baidu/location/e/c$a;->c:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "scanSpan"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/baidu/location/LocationClientOption;->scanSpan:I

    iget-object v0, p0, Lcom/baidu/location/e/c$a;->c:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "timeOut"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/baidu/location/LocationClientOption;->timeOut:I

    iget-object v0, p0, Lcom/baidu/location/e/c$a;->c:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "priority"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/baidu/location/LocationClientOption;->priority:I

    iget-object v0, p0, Lcom/baidu/location/e/c$a;->c:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "location_change_notify"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/baidu/location/LocationClientOption;->location_change_notify:Z

    iget-object v0, p0, Lcom/baidu/location/e/c$a;->c:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "needDirect"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/baidu/location/LocationClientOption;->mIsNeedDeviceDirect:Z

    iget-object v0, p0, Lcom/baidu/location/e/c$a;->c:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "isneedaltitude"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/baidu/location/LocationClientOption;->isNeedAltitude:Z

    sget-boolean v0, Lcom/baidu/location/b/k;->bX:Z

    if-nez v0, :cond_4

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "isneedaptag"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move v0, p1

    goto :goto_3

    :cond_4
    :goto_2
    move v0, v1

    :goto_3
    sput-boolean v0, Lcom/baidu/location/b/k;->bX:Z

    sget-boolean v0, Lcom/baidu/location/b/k;->bP:Z

    if-nez v0, :cond_5

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "isneedaptagd"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_6

    :cond_5
    move p1, v1

    :cond_6
    sput-boolean p1, Lcom/baidu/location/b/k;->bP:Z

    iget-object p1, p0, Lcom/baidu/location/e/c$a;->c:Lcom/baidu/location/LocationClientOption;

    iget p1, p1, Lcom/baidu/location/LocationClientOption;->scanSpan:I

    const/16 p2, 0x3e8

    if-lt p1, p2, :cond_7

    invoke-static {}, Lcom/baidu/location/e/i;->bW()Lcom/baidu/location/e/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/location/e/i;->bV()V

    :cond_7
    iget-object p1, p0, Lcom/baidu/location/e/c$a;->c:Lcom/baidu/location/LocationClientOption;

    iget-boolean p1, p1, Lcom/baidu/location/LocationClientOption;->mIsNeedDeviceDirect:Z

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/baidu/location/e/c$a;->c:Lcom/baidu/location/LocationClientOption;

    iget-boolean p1, p1, Lcom/baidu/location/LocationClientOption;->isNeedAltitude:Z

    if-eqz p1, :cond_9

    :cond_8
    invoke-static {}, Lcom/baidu/location/e/l;->ce()Lcom/baidu/location/e/l;

    move-result-object p1

    iget-object p2, p0, Lcom/baidu/location/e/c$a;->c:Lcom/baidu/location/LocationClientOption;

    iget-boolean p2, p2, Lcom/baidu/location/LocationClientOption;->mIsNeedDeviceDirect:Z

    invoke-virtual {p1, p2}, Lcom/baidu/location/e/l;->case(Z)V

    invoke-static {}, Lcom/baidu/location/e/l;->ce()Lcom/baidu/location/e/l;

    move-result-object p1

    iget-object p2, p0, Lcom/baidu/location/e/c$a;->c:Lcom/baidu/location/LocationClientOption;

    iget-boolean p2, p2, Lcom/baidu/location/LocationClientOption;->isNeedAltitude:Z

    invoke-virtual {p1, p2}, Lcom/baidu/location/e/l;->char(Z)V

    invoke-static {}, Lcom/baidu/location/e/l;->ce()Lcom/baidu/location/e/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/location/e/l;->cc()V

    :cond_9
    return-void
.end method

.method private a(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    :try_start_0
    iget-object v0, p0, Lcom/baidu/location/e/c$a;->b:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/e/c$a;->b:Landroid/os/Messenger;

    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/baidu/location/e/c$a;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    instance-of p1, p1, Landroid/os/DeadObjectException;

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/baidu/location/e/c$a;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/baidu/location/e/c$a;->d:I

    :cond_1
    :goto_0
    return-void
.end method

.method private a(ILandroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :try_start_0
    iget-object p2, p0, Lcom/baidu/location/e/c$a;->b:Landroid/os/Messenger;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/baidu/location/e/c$a;->b:Landroid/os/Messenger;

    invoke-virtual {p2, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/baidu/location/e/c$a;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    instance-of p2, p1, Landroid/os/DeadObjectException;

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/baidu/location/e/c$a;->d:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/baidu/location/e/c$a;->d:I

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private a(ILjava/lang/String;Lcom/baidu/location/BDLocation;)V
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 p2, 0x0

    invoke-static {p2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :try_start_0
    iget-object p2, p0, Lcom/baidu/location/e/c$a;->b:Landroid/os/Messenger;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/baidu/location/e/c$a;->b:Landroid/os/Messenger;

    invoke-virtual {p2, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/baidu/location/e/c$a;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    instance-of p1, p1, Landroid/os/DeadObjectException;

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/baidu/location/e/c$a;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/baidu/location/e/c$a;->d:I

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/baidu/location/e/c$a;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/e/c$a;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/e/c$a;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/baidu/location/e/c$a;->a(ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/16 v0, 0x17

    invoke-direct {p0, v0}, Lcom/baidu/location/e/c$a;->a(I)V

    return-void
.end method

.method public a(Lcom/baidu/location/BDLocation;)V
    .locals 1

    const/16 v0, 0x15

    invoke-virtual {p0, p1, v0}, Lcom/baidu/location/e/c$a;->a(Lcom/baidu/location/BDLocation;I)V

    return-void
.end method

.method public a(Lcom/baidu/location/BDLocation;I)V
    .locals 8

    new-instance v0, Lcom/baidu/location/BDLocation;

    invoke-direct {v0, p1}, Lcom/baidu/location/BDLocation;-><init>(Lcom/baidu/location/BDLocation;)V

    invoke-static {}, Lcom/baidu/location/e/l;->ce()Lcom/baidu/location/e/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/location/e/l;->ca()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result p1

    const/16 v1, 0xa1

    if-eq p1, v1, :cond_0

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result p1

    const/16 v1, 0x42

    if-ne p1, v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/baidu/location/e/l;->ce()Lcom/baidu/location/e/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/location/e/l;->cd()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/baidu/location/BDLocation;->setAltitude(D)V

    :cond_1
    const/16 p1, 0x15

    if-ne p2, p1, :cond_2

    const/16 p1, 0x1b

    const-string v1, "locStr"

    invoke-direct {p0, p1, v1, v0}, Lcom/baidu/location/e/c$a;->a(ILjava/lang/String;Lcom/baidu/location/BDLocation;)V

    :cond_2
    iget-object p1, p0, Lcom/baidu/location/e/c$a;->c:Lcom/baidu/location/LocationClientOption;

    iget-object p1, p1, Lcom/baidu/location/LocationClientOption;->coorType:Ljava/lang/String;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/baidu/location/e/c$a;->c:Lcom/baidu/location/LocationClientOption;

    iget-object p1, p1, Lcom/baidu/location/LocationClientOption;->coorType:Ljava/lang/String;

    const-string v1, "gcj02"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v3

    const-wide/16 v5, 0x1

    cmpl-double p1, v1, v5

    if-eqz p1, :cond_6

    cmpl-double p1, v3, v5

    if-eqz p1, :cond_6

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getCoorType()Ljava/lang/String;

    move-result-object p1

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getCoorType()Ljava/lang/String;

    move-result-object p1

    const-string v7, "gcj02"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    :cond_3
    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getCoorType()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5

    :cond_4
    iget-object p1, p0, Lcom/baidu/location/e/c$a;->c:Lcom/baidu/location/LocationClientOption;

    iget-object p1, p1, Lcom/baidu/location/LocationClientOption;->coorType:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, p1}, Lcom/baidu/location/Jni;->if(DDLjava/lang/String;)[D

    move-result-object p1

    aget-wide v1, p1, v6

    invoke-virtual {v0, v1, v2}, Lcom/baidu/location/BDLocation;->setLongitude(D)V

    aget-wide v1, p1, v5

    invoke-virtual {v0, v1, v2}, Lcom/baidu/location/BDLocation;->setLatitude(D)V

    iget-object p1, p0, Lcom/baidu/location/e/c$a;->c:Lcom/baidu/location/LocationClientOption;

    iget-object p1, p1, Lcom/baidu/location/LocationClientOption;->coorType:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, p1}, Lcom/baidu/location/BDLocation;->setCoorType(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getCoorType()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getCoorType()Ljava/lang/String;

    move-result-object p1

    const-string v7, "wgs84"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/baidu/location/e/c$a;->c:Lcom/baidu/location/LocationClientOption;

    iget-object p1, p1, Lcom/baidu/location/LocationClientOption;->coorType:Ljava/lang/String;

    const-string v7, "bd09ll"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "wgs842mc"

    invoke-static {v1, v2, v3, v4, p1}, Lcom/baidu/location/Jni;->if(DDLjava/lang/String;)[D

    move-result-object p1

    aget-wide v1, p1, v6

    invoke-virtual {v0, v1, v2}, Lcom/baidu/location/BDLocation;->setLongitude(D)V

    aget-wide v1, p1, v5

    invoke-virtual {v0, v1, v2}, Lcom/baidu/location/BDLocation;->setLatitude(D)V

    const-string p1, "wgs84mc"

    goto :goto_0

    :cond_6
    :goto_1
    const-string p1, "locStr"

    invoke-direct {p0, p2, p1, v0}, Lcom/baidu/location/e/c$a;->a(ILjava/lang/String;Lcom/baidu/location/BDLocation;)V

    return-void
.end method

.method public b()V
    .locals 1

    const/16 v0, 0x6f

    invoke-direct {p0, v0}, Lcom/baidu/location/e/c$a;->a(I)V

    return-void
.end method

.method public b(Lcom/baidu/location/BDLocation;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/e/c$a;->c:Lcom/baidu/location/LocationClientOption;

    iget-boolean v0, v0, Lcom/baidu/location/LocationClientOption;->location_change_notify:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/baidu/location/e/c$a;->a(Lcom/baidu/location/BDLocation;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/e/c$a;->c:Lcom/baidu/location/LocationClientOption;

    iget-boolean v0, v0, Lcom/baidu/location/LocationClientOption;->location_change_notify:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget-boolean v0, Lcom/baidu/location/b/k;->cG:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x36

    goto :goto_0

    :cond_0
    const/16 v0, 0x37

    :goto_0
    invoke-direct {p0, v0}, Lcom/baidu/location/e/c$a;->a(I)V

    :cond_1
    return-void
.end method
