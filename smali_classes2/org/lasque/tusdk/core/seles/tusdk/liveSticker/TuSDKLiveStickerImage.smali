.class public Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage$TuSDKStickerAnimationItem;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field private c:I

.field private d:I

.field private e:Z

.field private f:J

.field private g:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

.field private h:Z

.field private i:Z

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage$TuSDKStickerAnimationItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->e:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->j:Ljava/util/ArrayList;

    return-void
.end method

.method private a(J)I
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_3

    iget-wide v2, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->f:J

    cmp-long v0, v2, v0

    if-lez v0, :cond_3

    cmp-long v0, p1, v2

    if-ltz v0, :cond_3

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->d:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-wide v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->f:J

    sub-long/2addr p1, v0

    long-to-float p1, p1

    iget p2, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->d:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    double-to-int p1, p1

    iget-object p2, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->j:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-le p1, p2, :cond_2

    iget-object p2, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->g:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    iget-object p2, p2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->positionInfo:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;

    iget p2, p2, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;->loopStartIndex:I

    if-lez p2, :cond_1

    iget-object p2, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->g:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    iget-object p2, p2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->positionInfo:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;

    iget p2, p2, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;->loopStartIndex:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    iget-object p2, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->g:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    iget-object p2, p2, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->positionInfo:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;

    iget p2, p2, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;->loopStartIndex:I

    sub-int/2addr p1, p2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, p2

    rem-int/2addr p1, v0

    add-int/2addr p1, p2

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->j:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    rem-int/2addr p1, p2

    :cond_2
    :goto_0
    return p1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;)Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->g:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    return-object p0
.end method

.method private a()V
    .locals 4

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->e:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->c:I

    if-gtz v0, :cond_1

    iget-wide v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->c:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->setBenchmarkTime(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(ILorg/lasque/tusdk/core/struct/TuSdkSize;)V
    .locals 2

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->a:Z

    if-nez v0, :cond_0

    new-instance p2, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage$3;

    invoke-direct {p2, p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage$3;-><init>(Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;I)V

    invoke-virtual {p0, p2}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->runOnGLContext(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->h:Z

    return-void

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->j:Ljava/util/ArrayList;

    new-instance v1, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage$TuSDKStickerAnimationItem;

    invoke-direct {v1, p0, p1, p2}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage$TuSDKStickerAnimationItem;-><init>(Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;ILorg/lasque/tusdk/core/struct/TuSdkSize;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->g:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    iget-object p1, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->positionInfo:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;->hasAnimationSupported()Z

    move-result p2

    if-eqz p2, :cond_3

    iget p2, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->b:I

    const/4 v0, 0x1

    add-int/2addr p2, v0

    iput p2, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->b:I

    iget-object p1, p1, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;->resourceList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget p2, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->b:I

    if-lt p2, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x5

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-boolean p2, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->i:Z

    if-nez p2, :cond_2

    iget p2, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->b:I

    if-le p2, p1, :cond_2

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->i:Z

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->a()V

    :cond_2
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->nextTextureLoadTask()V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->d()V

    :goto_1
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 5

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(Landroid/graphics/Bitmap;)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->minSide()I

    move-result v1

    const/4 v2, 0x0

    if-gtz v1, :cond_1

    const-string p1, "Passed image must not be empty - it should be at least 1px tall and wide"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    const/4 v1, 0x1

    new-array v3, v1, [I

    invoke-static {v1, v3, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v1, v3, v2

    const/16 v3, 0xde1

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v3, v2, p1, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    const/16 p1, 0x2801

    const v4, 0x46180400    # 9729.0f

    invoke-static {v3, p1, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p1, 0x2800

    invoke-static {v3, p1, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p1, 0x2802

    const v4, 0x47012f00    # 33071.0f

    invoke-static {v3, p1, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p1, 0x2803

    invoke-static {v3, p1, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    new-instance p1, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage$4;

    invoke-direct {p1, p0, v1, v0}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage$4;-><init>(Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;ILorg/lasque/tusdk/core/struct/TuSdkSize;)V

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->post(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;->shared()Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;

    move-result-object v0

    new-instance v1, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage$2;

    invoke-direct {v1, p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage$2;-><init>(Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;->loadImage(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;ILorg/lasque/tusdk/core/struct/TuSdkSize;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->a(ILorg/lasque/tusdk/core/struct/TuSdkSize;)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private b()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->setBenchmarkTime(J)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->c:I

    return-void
.end method

.method private c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->a:Z

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->g:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    iget-object v0, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->positionInfo:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;->hasAnimationSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->nextTextureLoadTask()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->g:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    iget-object v0, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->stickerImageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->i:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->a:Z

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->b:I

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->g:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    iget-object v0, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->positionInfo:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;->hasAnimationSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->a()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentTextureID()I
    .locals 4

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->h:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->e:Z

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->a(J)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->c:I

    :cond_1
    iget v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->c:I

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->j:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->j:Ljava/util/ArrayList;

    iget v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->c:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage$TuSDKStickerAnimationItem;

    iget v0, v0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage$TuSDKStickerAnimationItem;->textureID:I

    return v0
.end method

.method public getSticker()Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->g:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    return-object v0
.end method

.method public getTextureSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;
    .locals 2

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->h:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->j:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage$TuSDKStickerAnimationItem;

    iget-object v0, v0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage$TuSDKStickerAnimationItem;->imageSize:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isActived()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->h:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->i:Z

    return v0
.end method

.method protected nextTextureLoadTask()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->g:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    iget-object v0, v0, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->positionInfo:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;

    iget-object v0, v0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;->resourceList:Ljava/util/ArrayList;

    iget v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->b:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->a(Ljava/lang/String;)V

    return-void
.end method

.method public removeSticker()V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->g:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->getImage()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->g:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    invoke-virtual {v2, v1}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->setImage(Landroid/graphics/Bitmap;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iput-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->g:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->reset()V

    return-void
.end method

.method public reset()V
    .locals 5

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->b()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->b:I

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->j:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_0

    iget-object v4, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->j:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage$TuSDKStickerAnimationItem;

    iget v4, v4, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage$TuSDKStickerAnimationItem;->textureID:I

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage$1;

    invoke-direct {v2, p0, v1}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage$1;-><init>(Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;[I)V

    invoke-virtual {p0, v2}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->runOnGLContext(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->i:Z

    :cond_1
    iget-boolean v1, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->a:Z

    if-nez v1, :cond_2

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->h:Z

    :cond_2
    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->a:Z

    return-void
.end method

.method protected runOnGLContext(Ljava/lang/Runnable;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;->shared()Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/sticker/LiveStickerLoader;->uploadTexture(Ljava/lang/Runnable;)V

    return-void
.end method

.method public seekStickerToFrameTime(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->a(J)I

    move-result p1

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->c:I

    return-void
.end method

.method public setBenchmarkTime(J)V
    .locals 0

    iput-wide p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->f:J

    return-void
.end method

.method public setEnableAutoplayMode(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->e:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->e:Z

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->b()V

    return-void
.end method

.method public updateSticker(Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;)V
    .locals 2

    invoke-virtual {p1}, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->getType()Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData$StickerType;

    move-result-object v0

    sget-object v1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData$StickerType;->TypeDynamic:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData$StickerType;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;->positionInfo:Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->g:Lorg/lasque/tusdk/modules/view/widget/sticker/StickerData;

    if-eqz v0, :cond_1

    iget p1, v0, Lorg/lasque/tusdk/core/sticker/StickerPositionInfo;->frameInterval:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->d:I

    iget p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->d:I

    if-gtz p1, :cond_2

    const/16 p1, 0x64

    iput p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->d:I

    :cond_2
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->reset()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->h:Z

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/tusdk/liveSticker/TuSDKLiveStickerImage;->c()V

    return-void
.end method
