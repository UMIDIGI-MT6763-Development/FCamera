.class public Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper;
.super Ljava/lang/Object;
.source "PictureSizeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper$ResolutionBucket;,
        Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper$Size;
    }
.end annotation


# static fields
.field private static final ASPECT_TOLERANCE:D = 0.01

.field private static final QVGA:Ljava/lang/String; = "320x240"

.field private static final RATIOS:[D

.field private static final RATIOS_IN_STRING:[Ljava/lang/String;

.field public static final RATIO_13_6:D = 2.1666666666666665

.field private static final RATIO_13_6_IN_STRING:Ljava/lang/String; = "(13:6)"

.field public static final RATIO_16_9:D = 1.7777777777777777

.field private static final RATIO_16_9_IN_STRING:Ljava/lang/String; = "(16:9)"

.field public static final RATIO_18_9:D = 2.0

.field private static final RATIO_18_9_IN_STRING:Ljava/lang/String; = "(18:9)"

.field public static final RATIO_19_9:D = 2.111111111111111

.field private static final RATIO_19_9_IN_STRING:Ljava/lang/String; = "(19:9)"

.field public static final RATIO_3_2:D = 1.5

.field private static final RATIO_3_2_IN_STRING:Ljava/lang/String; = "(3:2)"

.field public static final RATIO_4_3:D = 1.3333333333333333

.field private static final RATIO_4_3_IN_STRING:Ljava/lang/String; = "(4:3)"

.field public static final RATIO_5_3:D = 1.6666666666666667

.field private static final RATIO_5_3_IN_STRING:Ljava/lang/String; = "(5:3)"

.field private static final SVGA:Ljava/lang/String; = "800x600"

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private static final VGA:Ljava/lang/String; = "640x480"

.field private static final WQVGA:Ljava/lang/String; = "400x240"

.field private static final WVGA:Ljava/lang/String; = "800x480"

.field private static sDegressiveRatio:D

.field private static sDesiredAspectRatios:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private static sDesiredAspectRatiosInStr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sFormat:Ljava/text/DecimalFormat;

.field private static sMaxCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const/4 v0, 0x7

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper;->RATIOS:[D

    const-string v1, "(19:9)"

    const-string v2, "(18:9)"

    const-string v3, "(16:9)"

    const-string v4, "(13:6)"

    const-string v5, "(5:3)"

    const-string v6, "(3:2)"

    const-string v7, "(4:3)"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper;->RATIOS_IN_STRING:[Ljava/lang/String;

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "##0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper;->sFormat:Ljava/text/DecimalFormat;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper;->sDesiredAspectRatios:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper;->sDesiredAspectRatiosInStr:Ljava/util/List;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper;->sDegressiveRatio:D

    const/4 v0, 0x0

    sput v0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper;->sMaxCount:I

    return-void

    :array_0
    .array-data 8
        0x4000e38e38e38e39L    # 2.111111111111111
        0x4000000000000000L    # 2.0
        0x3ffc71c71c71c71cL    # 1.7777777777777777
        0x4001555555555555L    # 2.1666666666666665
        0x3ffaaaaaaaaaaaabL    # 1.6666666666666667
        0x3ff8000000000000L    # 1.5
        0x3ff5555555555555L    # 1.3333333333333333
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static area(Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper$Size;)I
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v0, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper$Size;->width:I

    iget p0, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper$Size;->height:I

    mul-int/2addr v0, p0

    return v0
.end method

.method public static filterSizes(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper;->sDesiredAspectRatios:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    new-instance v4, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper$ResolutionBucket;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper$ResolutionBucket;-><init>(Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper$1;)V

    iput-wide v2, v4, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper$ResolutionBucket;->aspectRatio:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper;->valueToSize(Ljava/lang/String;)Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper$Size;

    move-result-object v1

    iget v4, v1, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper$Size;->width:I

    int-to-double v4, v4

    iget v6, v1, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper$Size;->height:I

    int-to-double v6, v6

    div-double/2addr v4, v6

    :goto_2
    sget-object v6, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper;->sDesiredAspectRatios:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_3

    sget-object v6, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper;->sDesiredAspectRatios:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    sub-double v6, v4, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v8, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v6, v6, v8

    if-gez v6, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_3
    if-ltz v2, :cond_1

    sget-object v3, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper;->sDesiredAspectRatios:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper$ResolutionBucket;

    invoke-virtual {v2, v1}, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper$ResolutionBucket;->add(Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper$Size;)V

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/util/LinkedList;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    sget-object v1, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper;->sDesiredAspectRatios:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper$ResolutionBucket;

    iget-object v5, v4, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper$ResolutionBucket;->sizes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_6

    goto :goto_4

    :cond_6
    iget-object v4, v4, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper$ResolutionBucket;->sizes:Ljava/util/List;

    invoke-static {v4}, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper;->pickUpToThree(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper$Size;

    move v6, v2

    :goto_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_8

    invoke-static {v5}, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper;->area(Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper$Size;)I

    move-result v7

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper$Size;

    invoke-static {v8}, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper;->area(Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper$Size;)I

    move-result v8

    if-lt v7, v8, :cond_7

    goto :goto_7

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_8
    move v6, v3

    :goto_7
    if-ne v6, v3, :cond_9

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    :cond_9
    invoke-interface {p0, v6, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_5

    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper$Size;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper;->sizeToStr(Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper$Size;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_b
    return-object v0
.end method

.method public static findFullScreenRatio(Landroid/content/Context;)D
    .locals 11

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-double v1, p0

    int-to-double v3, v0

    div-double/2addr v1, v3

    const-wide v3, 0x3ff5555555555555L    # 1.3333333333333333

    const/4 p0, 0x0

    :goto_0
    sget-object v0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper;->RATIOS:[D

    array-length v5, v0

    if-ge p0, v5, :cond_1

    aget-wide v5, v0, p0

    sub-double v7, v5, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    sub-double v9, v3, v1

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    cmpg-double v0, v7, v9

    if-gez v0, :cond_0

    move-wide v3, v5

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-wide v3
.end method

.method public static getPixelsAndRatio(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    invoke-static {p0}, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper;->valueToSize(Ljava/lang/String;)Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper$Size;

    move-result-object v0

    iget v1, v0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper$Size;->width:I

    int-to-double v1, v1

    iget v3, v0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper$Size;->height:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    const/4 v3, 0x0

    :goto_0
    sget-object v4, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper;->sDesiredAspectRatios:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, -0x1

    if-ge v3, v4, :cond_1

    sget-object v4, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper;->sDesiredAspectRatios:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    sub-double v6, v1, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v8, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v4, v6, v8

    if-gez v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_1
    if-ne v3, v5, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    iget v1, v0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper$Size;->width:I

    iget v2, v0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper$Size;->height:I

    mul-int/2addr v1, v2

    int-to-double v1, v1

    const-wide v4, 0x411e848000000000L    # 500000.0

    cmpg-double v1, v1, v4

    if-gez v1, :cond_7

    const-string v1, "320x240"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p0, "QVGA"

    return-object p0

    :cond_3
    const-string v1, "400x240"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string p0, "WQVGA"

    return-object p0

    :cond_4
    const-string v1, "640x480"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string p0, "0.3M(4:3)"

    return-object p0

    :cond_5
    const-string v1, "800x480"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string p0, "WVGA"

    return-object p0

    :cond_6
    const-string v1, "800x600"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "SVGA"

    return-object p0

    :cond_7
    sget-object p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper;->sDesiredAspectRatiosInStr:Ljava/util/List;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    sget-object v1, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper;->sFormat:Ljava/text/DecimalFormat;

    iget v2, v0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper$Size;->width:I

    iget v0, v0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper$Size;->height:I

    mul-int/2addr v2, v0

    int-to-double v2, v2

    const-wide v4, 0x412e848000000000L    # 1000000.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "M"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStandardAspectRatio(Ljava/lang/String;)D
    .locals 8

    invoke-static {p0}, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper;->valueToSize(Ljava/lang/String;)Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper$Size;

    move-result-object p0

    iget v0, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper$Size;->width:I

    int-to-double v0, v0

    iget p0, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper$Size;->height:I

    int-to-double v2, p0

    div-double/2addr v0, v2

    const/4 p0, 0x0

    :goto_0
    sget-object v2, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper;->sDesiredAspectRatios:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p0, v2, :cond_1

    sget-object v2, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper;->sDesiredAspectRatios:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    sub-double v4, v0, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    return-wide v2

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method private static pickUpToThree(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper$Size;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper$Size;",
            ">;"
        }
    .end annotation

    sget-wide v0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper;->sDegressiveRatio:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_6

    sget v0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper;->sMaxCount:I

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper$Size;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move-object v2, v1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper$Size;

    sget-wide v4, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper;->sDegressiveRatio:D

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    int-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper;->area(Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper$Size;)I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v4, v6

    invoke-static {v3}, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper;->area(Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper$Size;)I

    move-result v6

    int-to-double v6, v6

    cmpg-double v6, v6, v4

    if-gez v6, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v2}, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper;->area(Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper$Size;)I

    move-result v6

    int-to-double v6, v6

    sub-double/2addr v6, v4

    invoke-static {v3}, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper;->area(Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper$Size;)I

    move-result v8

    int-to-double v8, v8

    sub-double/2addr v4, v8

    cmpg-double v4, v6, v4

    if-gez v4, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sget v4, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper;->sMaxCount:I

    if-ne v2, v4, :cond_3

    move-object v2, v3

    goto :goto_2

    :cond_3
    move-object v2, v3

    goto :goto_0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    sget v1, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper;->sMaxCount:I

    if-ge p0, v1, :cond_5

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v0

    :cond_6
    :goto_3
    return-object p0
.end method

.method public static setDesiredAspectRatios(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper;->sDesiredAspectRatios:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper;->sDesiredAspectRatiosInStr:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p0, :cond_0

    sget-object v0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper;->sDesiredAspectRatios:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    const/4 p0, 0x0

    move v0, p0

    :goto_0
    sget-object v1, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper;->sDesiredAspectRatios:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    sget-object v1, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper;->sDesiredAspectRatios:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const/4 v3, 0x0

    move v4, p0

    :goto_1
    sget-object v5, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper;->RATIOS:[D

    array-length v6, v5

    if-ge v4, v6, :cond_2

    aget-wide v6, v5, v4

    cmpl-double v5, v1, v6

    if-nez v5, :cond_1

    sget-object v1, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper;->RATIOS_IN_STRING:[Ljava/lang/String;

    aget-object v3, v1, v4

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    sget-object v1, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper;->sDesiredAspectRatiosInStr:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static setFilterParameters(DI)V
    .locals 0

    sput-wide p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper;->sDegressiveRatio:D

    sput p2, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper;->sMaxCount:I

    return-void
.end method

.method private static sizeToStr(Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper$Size;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper$Size;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper$Size;->height:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static valueToSize(Ljava/lang/String;)Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper$Size;
    .locals 3

    const/16 v0, 0x78

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    new-instance v0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper$Size;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper$Size;-><init>(Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper$1;)V

    iput v1, v0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper$Size;->width:I

    iput p0, v0, Lcom/freeme/camera/feature/setting/picturesize/PictureSizeHelper$Size;->height:I

    return-object v0
.end method
