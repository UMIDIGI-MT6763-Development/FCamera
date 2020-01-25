.class public abstract Lorg/lasque/tusdk/core/api/TuSDKImageFilterAPI;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Z
    .locals 3

    sget-object v0, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/secret/SdkValid;->sdkValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "Configuration not found! Please see: http://tusdk.com/docs/android/get-started"

    :goto_0
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_0
    sget-object v0, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/secret/SdkValid;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Your account has expired Please see: http://tusdk.com/docs/android/get-started"

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public getArgKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/api/TuSDKImageFilterAPI;->getFilterWrap()Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/api/TuSDKImageFilterAPI;->getFilterWrap()Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilterParameter()Lorg/lasque/tusdk/core/seles/SelesParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesParameters;->getArgKeys()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFilterArgPrecentValue(Ljava/lang/String;)F
    .locals 4

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/api/TuSDKImageFilterAPI;->getFilterWrap()Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/api/TuSDKImageFilterAPI;->getFilterWrap()Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilterParameter()Lorg/lasque/tusdk/core/seles/SelesParameters;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/seles/SelesParameters;->getFilterArg(Ljava/lang/String;)Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "setFilterArg Invalid key : %@"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v2}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_1
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->getPrecentValue()F

    move-result p1

    return p1
.end method

.method protected abstract getFilterWrap()Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;
.end method

.method public process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Up:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-virtual {p0, p1, v0}, Lorg/lasque/tusdk/core/api/TuSDKImageFilterAPI;->process(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public process(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/lasque/tusdk/core/api/TuSDKImageFilterAPI;->process(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;F)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public final process(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;F)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0}, Lorg/lasque/tusdk/core/api/TuSDKImageFilterAPI;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/api/TuSDKImageFilterAPI;->getFilterWrap()Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(Landroid/graphics/Bitmap;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->limitScale()F

    move-result v0

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->imageScale(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/api/TuSDKImageFilterAPI;->submitFilterParameter()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/api/TuSDKImageFilterAPI;->getFilterWrap()Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->process(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;F)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method public reset()V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/api/TuSDKImageFilterAPI;->getFilterWrap()Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/api/TuSDKImageFilterAPI;->getFilterWrap()Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilterParameter()Lorg/lasque/tusdk/core/seles/SelesParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesParameters;->reset()V

    return-void
.end method

.method public setFilterArgPrecentValue(Ljava/lang/String;F)Z
    .locals 3

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/api/TuSDKImageFilterAPI;->getFilterWrap()Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/api/TuSDKImageFilterAPI;->getFilterWrap()Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilterParameter()Lorg/lasque/tusdk/core/seles/SelesParameters;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/seles/SelesParameters;->getFilterArg(Ljava/lang/String;)Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const-string p2, "setFilterArgPrecentValue Key : %@  does not exist"

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-static {p2, v0}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_1
    invoke-virtual {v0, p2}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->setPrecentValue(F)V

    return v2
.end method

.method protected submitFilterParameter()V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/api/TuSDKImageFilterAPI;->getFilterWrap()Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/api/TuSDKImageFilterAPI;->getFilterWrap()Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->submitFilterParameter()V

    return-void
.end method
