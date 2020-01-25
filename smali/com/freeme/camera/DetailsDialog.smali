.class public Lcom/freeme/camera/DetailsDialog;
.super Ljava/lang/Object;
.source "DetailsDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/DetailsDialog$DetailsAdapter;
    }
.end annotation


# static fields
.field private static sAddressResolver:Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/freeme/camera/DetailsDialog;->fail(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/freeme/camera/data/MediaDetails;)Landroid/app/Dialog;
    .locals 4

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b002f

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v1, Lcom/freeme/camera/DetailsDialog$DetailsAdapter;

    invoke-direct {v1, p0, p1}, Lcom/freeme/camera/DetailsDialog$DetailsAdapter;-><init>(Landroid/content/Context;Lcom/freeme/camera/data/MediaDetails;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-le p1, v1, :cond_1

    invoke-static {}, Lcom/freeme/camera/common/utils/CameraUtil;->isFreemeTheme()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/app/AlertDialog$Builder;

    const v1, 0x7f1000ab

    invoke-direct {p1, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    :goto_0
    const p0, 0x7f0f0075

    invoke-virtual {p1, p0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const p0, 0x104000a

    new-instance v0, Lcom/freeme/camera/DetailsDialog$1;

    invoke-direct {v0}, Lcom/freeme/camera/DetailsDialog$1;-><init>()V

    invoke-virtual {p1, p0, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method private static varargs fail(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Ljava/lang/AssertionError;

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static getDetailsName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown key"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const p1, 0x7f0f00ef

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const p1, 0x7f0f00bb

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    const p1, 0x7f0f0054

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    const p1, 0x7f0f01c8

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    const p1, 0x7f0f00c6

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5
    const p1, 0x7f0f00c1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_6
    const p1, 0x7f0f0105

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_7
    const p1, 0x7f0f00f6

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_8
    const p1, 0x7f0f00c0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_9
    const p1, 0x7f0f0100

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_a
    const p1, 0x7f0f0098

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_b
    const p1, 0x7f0f010c

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_c
    const p1, 0x7f0f00e8

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_d
    const p1, 0x7f0f01ca

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_e
    const p1, 0x7f0f00f3

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_f
    const p1, 0x7f0f01ae

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_10
    const p1, 0x7f0f0074

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_11
    const p1, 0x7f0f01af

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const p1, 0x7f0f0113

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x64
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x6b
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static resolveAddress(Lcom/freeme/camera/GalleryActivity;[DLcom/freeme/camera/DetailsDialog$DetailsAdapter;)Ljava/lang/String;
    .locals 8

    invoke-virtual {p0}, Lcom/freeme/camera/GalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/freeme/camera/common/location/ZuoyiGeoCoder;->getInstance(Landroid/content/Context;)Lcom/freeme/camera/common/location/ZuoyiGeoCoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/common/location/ZuoyiGeoCoder;->getAgent()Lcom/freeme/camera/common/location/ILocationAgent;

    move-result-object v0

    instance-of v1, v0, Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent;

    new-instance v1, Lcom/freeme/camera/DetailsDialog$2;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-direct {v1, v4, p0, p2}, Lcom/freeme/camera/DetailsDialog$2;-><init>(Ljava/lang/Thread;Lcom/freeme/camera/GalleryActivity;Lcom/freeme/camera/DetailsDialog$DetailsAdapter;)V

    invoke-virtual {v0, v1}, Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent;->setReverseGeoCodeListner(Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent$OnGetLocationStrByCooCompletedListener;)V

    aget-wide v4, p1, v3

    aget-wide v6, p1, v2

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/freeme/camera/common/location/baidu/BaiduLocationAgent;->reverseGeoCode(DD)Z

    :cond_0
    const-string p0, "%f,%f"

    aget-wide v0, p1, v3

    aget-wide v2, p1, v2

    invoke-static {p0, v0, v1, v2, v3}, Lcom/freeme/camera/location/addressResovler/DetailsAddressResolver;->formatLatitudeLongitude(Ljava/lang/String;DD)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
