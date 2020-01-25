.class public Lcom/baidu/location/d/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/location/b/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/d/a$b;,
        Lcom/baidu/location/d/a$a;
    }
.end annotation


# static fields
.field public static final fB:Ljava/lang/String; = "android.com.baidu.location.TIMER.NOTIFY"


# instance fields
.field private fA:Lcom/baidu/location/d/a$a;

.field private fC:Landroid/app/PendingIntent;

.field private fD:Ljava/util/ArrayList;

.field private fE:Lcom/baidu/location/BDLocation;

.field private fF:J

.field private fG:Lcom/baidu/location/d/a$b;

.field private fH:F

.field private fI:Z

.field private fJ:J

.field private fK:Z

.field private fL:Lcom/baidu/location/LocationClient;

.field private fx:I

.field private fy:Landroid/content/Context;

.field private fz:Landroid/app/AlarmManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/baidu/location/LocationClient;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/d/a;->fD:Ljava/util/ArrayList;

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    iput v1, p0, Lcom/baidu/location/d/a;->fH:F

    iput-object v0, p0, Lcom/baidu/location/d/a;->fE:Lcom/baidu/location/BDLocation;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/baidu/location/d/a;->fJ:J

    iput-object v0, p0, Lcom/baidu/location/d/a;->fL:Lcom/baidu/location/LocationClient;

    iput-object v0, p0, Lcom/baidu/location/d/a;->fy:Landroid/content/Context;

    const/4 v3, 0x0

    iput v3, p0, Lcom/baidu/location/d/a;->fx:I

    iput-wide v1, p0, Lcom/baidu/location/d/a;->fF:J

    iput-boolean v3, p0, Lcom/baidu/location/d/a;->fI:Z

    iput-object v0, p0, Lcom/baidu/location/d/a;->fC:Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/baidu/location/d/a;->fz:Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/baidu/location/d/a;->fG:Lcom/baidu/location/d/a$b;

    new-instance v0, Lcom/baidu/location/d/a$a;

    invoke-direct {v0, p0}, Lcom/baidu/location/d/a$a;-><init>(Lcom/baidu/location/d/a;)V

    iput-object v0, p0, Lcom/baidu/location/d/a;->fA:Lcom/baidu/location/d/a$a;

    iput-boolean v3, p0, Lcom/baidu/location/d/a;->fK:Z

    iput-object p1, p0, Lcom/baidu/location/d/a;->fy:Landroid/content/Context;

    iput-object p2, p0, Lcom/baidu/location/d/a;->fL:Lcom/baidu/location/LocationClient;

    iget-object p1, p0, Lcom/baidu/location/d/a;->fL:Lcom/baidu/location/LocationClient;

    iget-object p2, p0, Lcom/baidu/location/d/a;->fA:Lcom/baidu/location/d/a$a;

    invoke-virtual {p1, p2}, Lcom/baidu/location/LocationClient;->registerNotifyLocationListener(Lcom/baidu/location/BDLocationListener;)V

    iget-object p1, p0, Lcom/baidu/location/d/a;->fy:Landroid/content/Context;

    const-string p2, "alarm"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p1, p0, Lcom/baidu/location/d/a;->fz:Landroid/app/AlarmManager;

    new-instance p1, Lcom/baidu/location/d/a$b;

    invoke-direct {p1, p0}, Lcom/baidu/location/d/a$b;-><init>(Lcom/baidu/location/d/a;)V

    iput-object p1, p0, Lcom/baidu/location/d/a;->fG:Lcom/baidu/location/d/a$b;

    iput-boolean v3, p0, Lcom/baidu/location/d/a;->fK:Z

    return-void
.end method

.method private a1()V
    .locals 6

    invoke-direct {p0}, Lcom/baidu/location/d/a;->a3()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/baidu/location/d/a;->fH:F

    const v1, 0x459c4000    # 5000.0f

    cmpl-float v1, v0, v1

    const/16 v2, 0x2710

    if-lez v1, :cond_1

    const v0, 0x927c0

    goto :goto_0

    :cond_1
    const/high16 v1, 0x447a0000    # 1000.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    const v0, 0x1d4c0

    goto :goto_0

    :cond_2
    const/high16 v1, 0x43fa0000    # 500.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    const v0, 0xea60

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    iget-boolean v1, p0, Lcom/baidu/location/d/a;->fI:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    iput-boolean v3, p0, Lcom/baidu/location/d/a;->fI:Z

    move v0, v2

    :cond_4
    iget v1, p0, Lcom/baidu/location/d/a;->fx:I

    if-eqz v1, :cond_5

    iget-wide v4, p0, Lcom/baidu/location/d/a;->fF:J

    int-to-long v1, v1

    add-long/2addr v4, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v4, v1

    int-to-long v1, v0

    cmp-long v1, v1, v4

    if-lez v1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_6

    iput v0, p0, Lcom/baidu/location/d/a;->fx:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/d/a;->fF:J

    iget v0, p0, Lcom/baidu/location/d/a;->fx:I

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/baidu/location/d/a;->new(J)V

    :cond_6
    return-void
.end method

.method private a3()Z
    .locals 4

    iget-object v0, p0, Lcom/baidu/location/d/a;->fD:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/d/a;->fD:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/location/BDNotifyListener;

    iget v2, v2, Lcom/baidu/location/BDNotifyListener;->Notified:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method static synthetic do(Lcom/baidu/location/d/a;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/baidu/location/d/a;->fD:Ljava/util/ArrayList;

    return-object p0
.end method

.method private for(Lcom/baidu/location/BDLocation;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v2

    const/16 v3, 0x3d

    if-eq v2, v3, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v2

    const/16 v3, 0xa1

    if-eq v2, v3, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v2

    const/16 v3, 0x41

    if-eq v2, v3, :cond_0

    const-wide/32 v1, 0x1d4c0

    invoke-direct {v0, v1, v2}, Lcom/baidu/location/d/a;->new(J)V

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/baidu/location/d/a;->fJ:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-ltz v2, :cond_7

    iget-object v2, v0, Lcom/baidu/location/d/a;->fD:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    goto/16 :goto_2

    :cond_1
    iput-object v1, v0, Lcom/baidu/location/d/a;->fE:Lcom/baidu/location/BDLocation;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/baidu/location/d/a;->fJ:J

    const/4 v2, 0x1

    new-array v12, v2, [F

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    iget-object v4, v0, Lcom/baidu/location/d/a;->fD:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v14, v3

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v15, 0x0

    if-eqz v3, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lcom/baidu/location/BDNotifyListener;

    invoke-virtual/range {p1 .. p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v5

    iget-wide v7, v11, Lcom/baidu/location/BDNotifyListener;->mLatitudeC:D

    iget-wide v9, v11, Lcom/baidu/location/BDNotifyListener;->mLongitudeC:D

    move-object v2, v11

    move-object v11, v12

    invoke-static/range {v3 .. v11}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    aget v3, v12, v15

    iget v4, v2, Lcom/baidu/location/BDNotifyListener;->mRadius:F

    sub-float/2addr v3, v4

    invoke-virtual/range {p1 .. p1}, Lcom/baidu/location/BDLocation;->getRadius()F

    move-result v4

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-lez v4, :cond_3

    cmpg-float v2, v3, v14

    if-gez v2, :cond_2

    move v14, v3

    :cond_2
    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    iget v3, v2, Lcom/baidu/location/BDNotifyListener;->Notified:I

    const/4 v4, 0x3

    if-ge v3, v4, :cond_2

    iget v3, v2, Lcom/baidu/location/BDNotifyListener;->Notified:I

    const/4 v5, 0x1

    add-int/2addr v3, v5

    iput v3, v2, Lcom/baidu/location/BDNotifyListener;->Notified:I

    aget v3, v12, v15

    invoke-virtual {v2, v1, v3}, Lcom/baidu/location/BDNotifyListener;->onNotify(Lcom/baidu/location/BDLocation;F)V

    iget v2, v2, Lcom/baidu/location/BDNotifyListener;->Notified:I

    if-ge v2, v4, :cond_4

    iput-boolean v5, v0, Lcom/baidu/location/d/a;->fI:Z

    :cond_4
    :goto_1
    move v2, v5

    goto :goto_0

    :cond_5
    iget v1, v0, Lcom/baidu/location/d/a;->fH:F

    cmpg-float v1, v14, v1

    if-gez v1, :cond_6

    iput v14, v0, Lcom/baidu/location/d/a;->fH:F

    :cond_6
    iput v15, v0, Lcom/baidu/location/d/a;->fx:I

    invoke-direct/range {p0 .. p0}, Lcom/baidu/location/d/a;->a1()V

    :cond_7
    :goto_2
    return-void
.end method

.method static synthetic if(Lcom/baidu/location/d/a;)Lcom/baidu/location/LocationClient;
    .locals 0

    iget-object p0, p0, Lcom/baidu/location/d/a;->fL:Lcom/baidu/location/LocationClient;

    return-object p0
.end method

.method static synthetic if(Lcom/baidu/location/d/a;Lcom/baidu/location/BDLocation;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/d/a;->for(Lcom/baidu/location/BDLocation;)V

    return-void
.end method

.method private new(J)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/baidu/location/d/a;->fC:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/d/a;->fz:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/baidu/location/d/a;->fC:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/d/a;->fy:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.com.baidu.location.TIMER.NOTIFY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x8000000

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/d/a;->fC:Landroid/app/PendingIntent;

    iget-object v0, p0, Lcom/baidu/location/d/a;->fC:Landroid/app/PendingIntent;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/d/a;->fz:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p1

    iget-object p1, p0, Lcom/baidu/location/d/a;->fC:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3, v1, v2, p1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public a2()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/d/a;->fC:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/baidu/location/d/a;->fz:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/d/a;->fE:Lcom/baidu/location/BDLocation;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/location/d/a;->fJ:J

    iget-boolean v0, p0, Lcom/baidu/location/d/a;->fK:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/d/a;->fy:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/location/d/a;->fG:Lcom/baidu/location/d/a$b;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/d/a;->fK:Z

    return-void
.end method

.method public do(Lcom/baidu/location/BDNotifyListener;)I
    .locals 12

    iget-object v0, p0, Lcom/baidu/location/d/a;->fD:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/d/a;->fD:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/d/a;->fD:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/baidu/location/BDNotifyListener;->isAdded:Z

    iput-object p0, p1, Lcom/baidu/location/BDNotifyListener;->mNotifyCache:Lcom/baidu/location/d/a;

    iget-boolean v1, p0, Lcom/baidu/location/d/a;->fK:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/baidu/location/d/a;->fy:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/location/d/a;->fG:Lcom/baidu/location/d/a$b;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.com.baidu.location.TIMER.NOTIFY"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v0, p0, Lcom/baidu/location/d/a;->fK:Z

    :cond_1
    iget-object v1, p1, Lcom/baidu/location/BDNotifyListener;->mCoorType:Ljava/lang/String;

    if-nez v1, :cond_2

    return v0

    :cond_2
    iget-object v1, p1, Lcom/baidu/location/BDNotifyListener;->mCoorType:Ljava/lang/String;

    const-string v2, "gcj02"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    iget-wide v3, p1, Lcom/baidu/location/BDNotifyListener;->mLongitude:D

    iget-wide v5, p1, Lcom/baidu/location/BDNotifyListener;->mLatitude:D

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p1, Lcom/baidu/location/BDNotifyListener;->mCoorType:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "2gcj"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v4, v5, v6, v1}, Lcom/baidu/location/Jni;->if(DDLjava/lang/String;)[D

    move-result-object v1

    aget-wide v3, v1, v2

    iput-wide v3, p1, Lcom/baidu/location/BDNotifyListener;->mLongitudeC:D

    aget-wide v3, v1, v0

    iput-wide v3, p1, Lcom/baidu/location/BDNotifyListener;->mLatitudeC:D

    :cond_3
    iget-object v1, p0, Lcom/baidu/location/d/a;->fE:Lcom/baidu/location/BDLocation;

    if-eqz v1, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/baidu/location/d/a;->fJ:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x7530

    cmp-long v1, v3, v5

    if-lez v1, :cond_4

    goto :goto_0

    :cond_4
    new-array v1, v0, [F

    iget-object v3, p0, Lcom/baidu/location/d/a;->fE:Lcom/baidu/location/BDLocation;

    invoke-virtual {v3}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v3

    iget-object v5, p0, Lcom/baidu/location/d/a;->fE:Lcom/baidu/location/BDLocation;

    invoke-virtual {v5}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v5

    iget-wide v7, p1, Lcom/baidu/location/BDNotifyListener;->mLatitudeC:D

    iget-wide v9, p1, Lcom/baidu/location/BDNotifyListener;->mLongitudeC:D

    move-object v11, v1

    invoke-static/range {v3 .. v11}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    aget v3, v1, v2

    iget v4, p1, Lcom/baidu/location/BDNotifyListener;->mRadius:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/baidu/location/d/a;->fE:Lcom/baidu/location/BDLocation;

    invoke-virtual {v4}, Lcom/baidu/location/BDLocation;->getRadius()F

    move-result v4

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-lez v4, :cond_5

    iget p1, p0, Lcom/baidu/location/d/a;->fH:F

    cmpg-float p1, v3, p1

    if-gez p1, :cond_7

    iput v3, p0, Lcom/baidu/location/d/a;->fH:F

    goto :goto_1

    :cond_5
    iget v3, p1, Lcom/baidu/location/BDNotifyListener;->Notified:I

    const/4 v4, 0x3

    if-ge v3, v4, :cond_7

    iget v3, p1, Lcom/baidu/location/BDNotifyListener;->Notified:I

    add-int/2addr v3, v0

    iput v3, p1, Lcom/baidu/location/BDNotifyListener;->Notified:I

    iget-object v3, p0, Lcom/baidu/location/d/a;->fE:Lcom/baidu/location/BDLocation;

    aget v1, v1, v2

    invoke-virtual {p1, v3, v1}, Lcom/baidu/location/BDNotifyListener;->onNotify(Lcom/baidu/location/BDLocation;F)V

    iget p1, p1, Lcom/baidu/location/BDNotifyListener;->Notified:I

    if-ge p1, v4, :cond_7

    iput-boolean v0, p0, Lcom/baidu/location/d/a;->fI:Z

    goto :goto_1

    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/baidu/location/d/a;->fL:Lcom/baidu/location/LocationClient;

    invoke-virtual {p1}, Lcom/baidu/location/LocationClient;->requestNotifyLocation()V

    :cond_7
    :goto_1
    invoke-direct {p0}, Lcom/baidu/location/d/a;->a1()V

    return v0
.end method

.method public for(Lcom/baidu/location/BDNotifyListener;)I
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/d/a;->fD:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/d/a;->fD:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    iget-object p1, p0, Lcom/baidu/location/d/a;->fD:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/baidu/location/d/a;->fC:Landroid/app/PendingIntent;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/baidu/location/d/a;->fz:Landroid/app/AlarmManager;

    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public if(Lcom/baidu/location/BDNotifyListener;)V
    .locals 12

    iget-object v0, p1, Lcom/baidu/location/BDNotifyListener;->mCoorType:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/baidu/location/BDNotifyListener;->mCoorType:Ljava/lang/String;

    const-string v1, "gcj02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-wide v3, p1, Lcom/baidu/location/BDNotifyListener;->mLongitude:D

    iget-wide v5, p1, Lcom/baidu/location/BDNotifyListener;->mLatitude:D

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p1, Lcom/baidu/location/BDNotifyListener;->mCoorType:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "2gcj"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v5, v6, v0}, Lcom/baidu/location/Jni;->if(DDLjava/lang/String;)[D

    move-result-object v0

    aget-wide v3, v0, v1

    iput-wide v3, p1, Lcom/baidu/location/BDNotifyListener;->mLongitudeC:D

    aget-wide v3, v0, v2

    iput-wide v3, p1, Lcom/baidu/location/BDNotifyListener;->mLatitudeC:D

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/d/a;->fE:Lcom/baidu/location/BDLocation;

    if-eqz v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/baidu/location/d/a;->fJ:J

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x493e0

    cmp-long v0, v3, v5

    if-lez v0, :cond_2

    goto :goto_0

    :cond_2
    new-array v0, v2, [F

    iget-object v3, p0, Lcom/baidu/location/d/a;->fE:Lcom/baidu/location/BDLocation;

    invoke-virtual {v3}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v3

    iget-object v5, p0, Lcom/baidu/location/d/a;->fE:Lcom/baidu/location/BDLocation;

    invoke-virtual {v5}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v5

    iget-wide v7, p1, Lcom/baidu/location/BDNotifyListener;->mLatitudeC:D

    iget-wide v9, p1, Lcom/baidu/location/BDNotifyListener;->mLongitudeC:D

    move-object v11, v0

    invoke-static/range {v3 .. v11}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    aget v3, v0, v1

    iget v4, p1, Lcom/baidu/location/BDNotifyListener;->mRadius:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/baidu/location/d/a;->fE:Lcom/baidu/location/BDLocation;

    invoke-virtual {v4}, Lcom/baidu/location/BDLocation;->getRadius()F

    move-result v4

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-lez v4, :cond_3

    iget p1, p0, Lcom/baidu/location/d/a;->fH:F

    cmpg-float p1, v3, p1

    if-gez p1, :cond_5

    iput v3, p0, Lcom/baidu/location/d/a;->fH:F

    goto :goto_1

    :cond_3
    iget v3, p1, Lcom/baidu/location/BDNotifyListener;->Notified:I

    const/4 v4, 0x3

    if-ge v3, v4, :cond_5

    iget v3, p1, Lcom/baidu/location/BDNotifyListener;->Notified:I

    add-int/2addr v3, v2

    iput v3, p1, Lcom/baidu/location/BDNotifyListener;->Notified:I

    iget-object v3, p0, Lcom/baidu/location/d/a;->fE:Lcom/baidu/location/BDLocation;

    aget v0, v0, v1

    invoke-virtual {p1, v3, v0}, Lcom/baidu/location/BDNotifyListener;->onNotify(Lcom/baidu/location/BDLocation;F)V

    iget p1, p1, Lcom/baidu/location/BDNotifyListener;->Notified:I

    if-ge p1, v4, :cond_5

    iput-boolean v2, p0, Lcom/baidu/location/d/a;->fI:Z

    goto :goto_1

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/baidu/location/d/a;->fL:Lcom/baidu/location/LocationClient;

    invoke-virtual {p1}, Lcom/baidu/location/LocationClient;->requestNotifyLocation()V

    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/baidu/location/d/a;->a1()V

    return-void
.end method
