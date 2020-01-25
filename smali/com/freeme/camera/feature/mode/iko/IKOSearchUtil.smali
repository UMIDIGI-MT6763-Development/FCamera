.class public Lcom/freeme/camera/feature/mode/iko/IKOSearchUtil;
.super Ljava/lang/Object;
.source "IKOSearchUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/mode/iko/IKOSearchUtil$Holder;
    }
.end annotation


# static fields
.field private static final API_KEY:Ljava/lang/String; = "SYUrq5t9EVzCBDOc3L6nTgHb"

.field private static final APP_ID:Ljava/lang/String; = "14252068"

.field private static final INDICATOR_VIEW_STYLE:Ljava/lang/String; = "BallClipRotatePulseIndicator"

.field private static final LOADERS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Dialog;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOADER_SIZE_SCALE:I = 0x8

.field private static final SECRET_KEY:Ljava/lang/String; = "28sCxTC3D5xRurhfMuBS8fxCwi0BgaR2"


# instance fields
.field private mIKOResultBean:Lcom/freeme/camera/feature/mode/iko/IKOResultBean;

.field private mResponseListener:Lcom/freeme/camera/feature/mode/iko/ResponseListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/freeme/camera/feature/mode/iko/IKOSearchUtil;->LOADERS:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getDisplaySize(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 2

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p1, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p1, Landroid/graphics/Point;->y:I

    return-object p1
.end method

.method private static getIndicator(Ljava/lang/String;)Lcom/wang/avi/Indicator;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-class v2, Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".indicators"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wang/avi/Indicator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static getInstance()Lcom/freeme/camera/feature/mode/iko/IKOSearchUtil;
    .locals 1

    invoke-static {}, Lcom/freeme/camera/feature/mode/iko/IKOSearchUtil$Holder;->access$000()Lcom/freeme/camera/feature/mode/iko/IKOSearchUtil;

    move-result-object v0

    return-object v0
.end method

.method public static getNetWorkStatus(Landroid/app/Activity;)Z
    .locals 3

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    invoke-virtual {p0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    sget-object p0, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v1, p0, :cond_1

    sget-object p0, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v1, p0, :cond_2

    :cond_1
    move v0, v2

    :cond_2
    return v0
.end method

.method private loadAipImageClassify()Lcom/baidu/aip/imageclassify/AipImageClassify;
    .locals 3

    const-string v0, "14252068"

    const-string v1, "SYUrq5t9EVzCBDOc3L6nTgHb"

    const-string v2, "28sCxTC3D5xRurhfMuBS8fxCwi0BgaR2"

    invoke-static {v0, v1, v2}, Lcom/freeme/camera/feature/mode/iko/AipImageClassifyClient;->getAiClassifyClient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/freeme/camera/feature/mode/iko/AipImageClassifyClient;

    move-result-object v0

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Lcom/baidu/aip/imageclassify/AipImageClassify;->setConnectionTimeoutInMillis(I)V

    const v1, 0xea60

    invoke-virtual {v0, v1}, Lcom/baidu/aip/imageclassify/AipImageClassify;->setSocketTimeoutInMillis(I)V

    return-object v0
.end method


# virtual methods
.method public compressBitmap([BII)[B
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int v5, v2, p2

    if-gt v2, p2, :cond_2

    if-le v4, p3, :cond_1

    goto :goto_0

    :cond_1
    return-object p1

    :cond_2
    :goto_0
    iput v5, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length p2, p1

    invoke-static {p1, v3, p2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object p3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p1, p3, v1, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object p1

    :catchall_0
    move-exception p1

    move-object v0, p2

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v0, :cond_3

    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :cond_3
    throw p1

    :catch_2
    move-object p2, v0

    :catch_3
    if-eqz p2, :cond_4

    :try_start_4
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :cond_4
    return-object v0

    :cond_5
    :goto_2
    return-object v0
.end method

.method public getMaskRect(Lcom/freeme/camera/feature/mode/iko/IKOResultBean;)Lcom/freeme/camera/feature/mode/iko/ImageRectBean;
    .locals 4

    :try_start_0
    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/iko/IKOSearchUtil;->loadAipImageClassify()Lcom/baidu/aip/imageclassify/AipImageClassify;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "with_face"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/mode/iko/IKOResultBean;->getResultByte()[B

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/baidu/aip/imageclassify/AipImageClassify;->objectDetect([BLjava/util/HashMap;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {}, Lcom/freeme/camera/feature/mode/iko/IKOSearchUtil;->getInstance()Lcom/freeme/camera/feature/mode/iko/IKOSearchUtil;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/freeme/camera/feature/mode/iko/IKOSearchUtil;->setIKOResultBean(Lcom/freeme/camera/feature/mode/iko/IKOResultBean;)V

    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/freeme/camera/feature/mode/iko/ImageRectBean;

    invoke-virtual {p1, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/feature/mode/iko/ImageRectBean;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public loadIKOBean([B)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/freeme/camera/feature/mode/iko/IKOSearchUtil;->mResponseListener:Lcom/freeme/camera/feature/mode/iko/ResponseListener;

    invoke-interface {v0}, Lcom/freeme/camera/feature/mode/iko/ResponseListener;->onLoadStart()V

    invoke-direct {p0}, Lcom/freeme/camera/feature/mode/iko/IKOSearchUtil;->loadAipImageClassify()Lcom/baidu/aip/imageclassify/AipImageClassify;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "baike_num"

    const-string v3, "5"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/baidu/aip/imageclassify/AipImageClassify;->advancedGeneral([BLjava/util/HashMap;)Lorg/json/JSONObject;

    move-result-object p1

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/freeme/camera/feature/mode/iko/IKOBean;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freeme/camera/feature/mode/iko/IKOBean;

    invoke-virtual {p1}, Lcom/freeme/camera/feature/mode/iko/IKOBean;->getResult()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/feature/mode/iko/IKOBean$ResultBean;

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/iko/IKOBean$ResultBean;->getBaike_info()Lcom/freeme/camera/feature/mode/iko/IKOBean$ResultBean$BaikeInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/iko/IKOBean$ResultBean$BaikeInfoBean;->getBaike_url()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/iko/IKOBean$ResultBean$BaikeInfoBean;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/freeme/camera/feature/mode/iko/IKOBean$ResultBean$BaikeInfoBean;->getImage_url()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/freeme/camera/feature/mode/iko/IKOResultBean;

    invoke-direct {v0}, Lcom/freeme/camera/feature/mode/iko/IKOResultBean;-><init>()V

    invoke-virtual {v0, p1}, Lcom/freeme/camera/feature/mode/iko/IKOResultBean;->setResultBean(Lcom/freeme/camera/feature/mode/iko/IKOBean;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOSearchUtil;->mResponseListener:Lcom/freeme/camera/feature/mode/iko/ResponseListener;

    invoke-interface {p1, v0}, Lcom/freeme/camera/feature/mode/iko/ResponseListener;->onLoadSuccess(Lcom/freeme/camera/feature/mode/iko/IKOResultBean;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOSearchUtil;->mResponseListener:Lcom/freeme/camera/feature/mode/iko/ResponseListener;

    invoke-interface {p1}, Lcom/freeme/camera/feature/mode/iko/ResponseListener;->onLoadFailure()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOSearchUtil;->mResponseListener:Lcom/freeme/camera/feature/mode/iko/ResponseListener;

    invoke-interface {p1}, Lcom/freeme/camera/feature/mode/iko/ResponseListener;->onLoadFailure()V

    :goto_1
    return-void
.end method

.method public setIKOResultBean(Lcom/freeme/camera/feature/mode/iko/IKOResultBean;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOSearchUtil;->mIKOResultBean:Lcom/freeme/camera/feature/mode/iko/IKOResultBean;

    return-void
.end method

.method public setResponseListener(Lcom/freeme/camera/feature/mode/iko/ResponseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/mode/iko/IKOSearchUtil;->mResponseListener:Lcom/freeme/camera/feature/mode/iko/ResponseListener;

    return-void
.end method

.method public showLoading(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f100183

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-direct {v1, p1}, Lcom/wang/avi/AVLoadingIndicatorView;-><init>(Landroid/content/Context;)V

    const-string v2, "#9000ff00"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/wang/avi/AVLoadingIndicatorView;->setIndicatorColor(I)V

    const-string v2, "BallClipRotatePulseIndicator"

    invoke-static {v2}, Lcom/freeme/camera/feature/mode/iko/IKOSearchUtil;->getIndicator(Ljava/lang/String;)Lcom/wang/avi/Indicator;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wang/avi/AVLoadingIndicatorView;->setIndicator(Lcom/wang/avi/Indicator;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-direct {p0, p1}, Lcom/freeme/camera/feature/mode/iko/IKOSearchUtil;->getDisplaySize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p1

    if-eqz p1, :cond_1

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    div-int/lit8 v1, v1, 0x8

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    div-int/lit8 p1, p1, 0x8

    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 p1, 0x11

    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :cond_0
    sget-object p1, Lcom/freeme/camera/feature/mode/iko/IKOSearchUtil;->LOADERS:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method public stopLoading()V
    .locals 3

    sget-object v0, Lcom/freeme/camera/feature/mode/iko/IKOSearchUtil;->LOADERS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Dialog;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    goto :goto_0

    :cond_1
    return-void
.end method
