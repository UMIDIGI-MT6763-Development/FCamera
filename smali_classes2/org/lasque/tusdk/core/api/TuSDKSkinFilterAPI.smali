.class public Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$AutoAdjustResultDelegate;,
        Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$SkinFilterManagerDelegate;
    }
.end annotation


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceAnalysis;

.field private g:Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;

.field private h:[Landroid/graphics/PointF;

.field private i:Ljava/lang/Object;

.field private j:Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$SkinFilterManagerDelegate;

.field private k:Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$SkinFilterManagerDelegate;

.field private l:Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$AutoAdjustResultDelegate;

.field private m:Landroid/graphics/Bitmap;

.field private n:Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceAnalysis$ImageFaceMarkAnalysisListener;

.field private o:Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;

.field private p:Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisListener;

.field private q:Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisCopyListener;


# direct methods
.method public constructor <init>(FFFFF)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->a:F

    iput v0, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->b:F

    const v0, 0x459c4000    # 5000.0f

    iput v0, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->c:F

    const v0, 0x3f85c28f    # 1.045f

    iput v0, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->d:F

    const v0, 0x3d449ba6    # 0.048f

    iput v0, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->e:F

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->i:Ljava/lang/Object;

    new-instance v0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$5;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$5;-><init>(Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->n:Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceAnalysis$ImageFaceMarkAnalysisListener;

    new-instance v0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$7;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$7;-><init>(Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->p:Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisListener;

    new-instance v0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$8;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$8;-><init>(Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;)V

    iput-object v0, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->q:Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisCopyListener;

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->a(F)V

    invoke-direct {p0, p2}, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->b(F)V

    invoke-direct {p0, p3}, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->c(F)V

    invoke-direct {p0, p4}, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->d(F)V

    invoke-direct {p0, p5}, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->e(F)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;)F
    .locals 0

    iget p0, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->a:F

    return p0
.end method

.method private a()Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;
    .locals 3

    new-instance v0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$1;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$1;-><init>(Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;)V

    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->id:J

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->canDefinition:Z

    iput-boolean v1, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->isInternal:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "f8a6ed3ec939d6941c94a272aff1791b"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v1, v0, Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;->internalTextures:Ljava/util/ArrayList;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->creat(Lorg/lasque/tusdk/core/seles/tusdk/FilterOption;)Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;)Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->g:Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;

    return-object p1
.end method

.method private a(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->a:F

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->f:Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceAnalysis;

    if-nez v0, :cond_0

    new-instance v0, Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceAnalysis;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceAnalysis;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->f:Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceAnalysis;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceAnalysis;->reset()V

    :goto_0
    new-instance v0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$4;

    invoke-direct {v0, p0, p1}, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$4;-><init>(Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->runThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/seles/SelesParameters;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;F)V
    .locals 8

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->h:[Landroid/graphics/PointF;

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->a(Landroid/graphics/Bitmap;)V

    invoke-direct {p0}, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->a()Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object v4

    invoke-virtual {v4, p2}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->setFilterParameter(Lorg/lasque/tusdk/core/seles/SelesParameters;)V

    invoke-virtual {v4}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->getFilter()Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;

    new-instance p2, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$3;

    move-object v1, p2

    move-object v2, p0

    move-object v5, p1

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$3;-><init>(Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;F)V

    invoke-static {p2}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->runThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->a(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;F)V

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;F)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->a(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/seles/SelesParameters;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;F)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->c(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->a(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;)V

    return-void
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceResult;)[Landroid/graphics/PointF;
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->a(Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceResult;)[Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;[Landroid/graphics/PointF;)[Landroid/graphics/PointF;
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->h:[Landroid/graphics/PointF;

    return-object p1
.end method

.method private a(Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceResult;)[Landroid/graphics/PointF;
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/graphics/PointF;

    iget-object p1, p1, Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceResult;->items:Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument$ImageItems;

    iget-object v2, p1, Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument$ImageItems;->marks:Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument$ImageMarks;

    iget-object v2, v2, Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument$ImageMarks;->eye_left:Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument$ImageMarksPoints;

    new-instance v3, Landroid/graphics/PointF;

    iget v4, v2, Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument$ImageMarksPoints;->x:F

    iget v2, v2, Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument$ImageMarksPoints;->y:F

    invoke-direct {v3, v4, v2}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v3, v0, v1

    iget-object v1, p1, Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument$ImageItems;->marks:Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument$ImageMarks;

    iget-object v1, v1, Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument$ImageMarks;->eye_right:Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument$ImageMarksPoints;

    new-instance v2, Landroid/graphics/PointF;

    iget v3, v1, Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument$ImageMarksPoints;->x:F

    iget v1, v1, Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument$ImageMarksPoints;->y:F

    invoke-direct {v2, v3, v1}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v1, 0x1

    aput-object v2, v0, v1

    iget-object v1, p1, Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument$ImageItems;->marks:Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument$ImageMarks;

    iget-object v1, v1, Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument$ImageMarks;->nose:Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument$ImageMarksPoints;

    new-instance v2, Landroid/graphics/PointF;

    iget v3, v1, Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument$ImageMarksPoints;->x:F

    iget v1, v1, Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument$ImageMarksPoints;->y:F

    invoke-direct {v2, v3, v1}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v1, 0x2

    aput-object v2, v0, v1

    iget-object v1, p1, Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument$ImageItems;->marks:Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument$ImageMarks;

    iget-object v1, v1, Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument$ImageMarks;->mouth_left:Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument$ImageMarksPoints;

    new-instance v2, Landroid/graphics/PointF;

    iget v3, v1, Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument$ImageMarksPoints;->x:F

    iget v1, v1, Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument$ImageMarksPoints;->y:F

    invoke-direct {v2, v3, v1}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v1, 0x3

    aput-object v2, v0, v1

    iget-object p1, p1, Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument$ImageItems;->marks:Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument$ImageMarks;

    iget-object p1, p1, Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument$ImageMarks;->mouth_right:Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument$ImageMarksPoints;

    new-instance v1, Landroid/graphics/PointF;

    iget v2, p1, Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument$ImageMarksPoints;->x:F

    iget p1, p1, Lorg/lasque/tusdk/core/network/analysis/ImageMark5FaceArgument$ImageMarksPoints;->y:F

    invoke-direct {v1, v2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 p1, 0x4

    aput-object v1, v0, p1

    return-object v0
.end method

.method static synthetic b(Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;)F
    .locals 0

    iget p0, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->b:F

    return p0
.end method

.method private b(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->b:F

    :cond_1
    :goto_0
    return-void
.end method

.method private b(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->o:Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;

    if-nez v0, :cond_0

    new-instance v0, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;

    invoke-direct {v0}, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->o:Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;->reset()V

    :goto_0
    new-instance v0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$6;

    invoke-direct {v0, p0, p1}, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$6;-><init>(Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/ThreadHelper;->runThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    return-void
.end method

.method private b(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/seles/SelesParameters;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;F)V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->a()Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object p2

    invoke-virtual {p2, p1, p3, p4}, Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;->process(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;F)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object p2, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->k:Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$SkinFilterManagerDelegate;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$SkinFilterManagerDelegate;->onGetSkinFilterResult(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method private b()Z
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

.method static synthetic c(Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;)F
    .locals 0

    iget p0, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->c:F

    return p0
.end method

.method private c(F)V
    .locals 1

    const/high16 v0, 0x457a0000    # 4000.0f

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const v0, 0x45bb8000    # 6000.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->c:F

    :cond_1
    :goto_0
    return-void
.end method

.method private c(Landroid/graphics/Bitmap;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lorg/lasque/tusdk/core/TuSdk;->getAppTempPath()Ljava/io/File;

    move-result-object v0

    const-string v1, "captureImage_%s.tmp"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lorg/lasque/tusdk/core/utils/StringHelper;->timeStampString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/16 v0, 0x5f

    invoke-static {v2, p1, v0}, Lorg/lasque/tusdk/core/utils/image/BitmapHelper;->saveBitmap(Ljava/io/File;Landroid/graphics/Bitmap;I)Z

    iget-object v0, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->o:Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->p:Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisListener;

    iget-object v5, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->q:Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisCopyListener;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis;->analysisWithThumb(Landroid/graphics/Bitmap;Ljava/io/File;Ljava/io/File;Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisListener;Lorg/lasque/tusdk/core/network/analysis/ImageAutoColorAnalysis$ImageAutoColorAnalysisCopyListener;)V

    return-void
.end method

.method static synthetic d(Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;)F
    .locals 0

    iget p0, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->d:F

    return p0
.end method

.method private d(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const v0, 0x3f99999a    # 1.2f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->d:F

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic e(Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;)F
    .locals 0

    iget p0, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->e:F

    return p0
.end method

.method private e(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const v0, 0x3dcccccd    # 0.1f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->e:F

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic f(Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->i:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic g(Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;)[Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->h:[Landroid/graphics/PointF;

    return-object p0
.end method

.method static synthetic h(Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;)Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$SkinFilterManagerDelegate;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->j:Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$SkinFilterManagerDelegate;

    return-object p0
.end method

.method static synthetic i(Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;)Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceAnalysis$ImageFaceMarkAnalysisListener;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->n:Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceAnalysis$ImageFaceMarkAnalysisListener;

    return-object p0
.end method

.method static synthetic j(Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;)Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceAnalysis;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->f:Lorg/lasque/tusdk/core/network/analysis/ImageMarkFaceAnalysis;

    return-object p0
.end method

.method static synthetic k(Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;)Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->g:Lorg/lasque/tusdk/core/seles/tusdk/filters/skins/TuSDKSkinWhiteningFilter;

    return-object p0
.end method

.method static synthetic l(Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;)Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$AutoAdjustResultDelegate;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->l:Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$AutoAdjustResultDelegate;

    return-object p0
.end method

.method static synthetic m(Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->m:Landroid/graphics/Bitmap;

    return-object p0
.end method


# virtual methods
.method public handleLocalSkinFilterProcess(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$SkinFilterManagerDelegate;)V
    .locals 2

    invoke-direct {p0}, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->b()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$SkinFilterManagerDelegate;->onGetSkinFilterResult(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void

    :cond_1
    iput-object p2, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->k:Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$SkinFilterManagerDelegate;

    const/4 p2, 0x0

    sget-object v0, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Up:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->b(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/seles/SelesParameters;Lorg/lasque/tusdk/core/utils/image/ImageOrientation;F)V

    return-void
.end method

.method public process(Landroid/graphics/Bitmap;Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$SkinFilterManagerDelegate;)V
    .locals 1

    invoke-direct {p0}, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->b()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$SkinFilterManagerDelegate;->onGetSkinFilterResult(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void

    :cond_1
    iput-object p2, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->j:Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$SkinFilterManagerDelegate;

    iput-object p1, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->m:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->b(Landroid/graphics/Bitmap;)V

    new-instance p1, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$2;

    invoke-direct {p1, p0}, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$2;-><init>(Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;)V

    iput-object p1, p0, Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI;->l:Lorg/lasque/tusdk/core/api/TuSDKSkinFilterAPI$AutoAdjustResultDelegate;

    return-void
.end method
