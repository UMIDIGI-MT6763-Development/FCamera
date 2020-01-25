.class public final Lcom/freeme/camera/feature/mode/vsdof/SdofUtil;
.super Ljava/lang/Object;
.source "SdofUtil.java"


# static fields
.field private static final ASPECT_TOLERANCE:D = 0.02

.field private static final QVGA:Ljava/lang/String; = "320x240"

.field private static final RATIOS:[D

.field private static final RATIOS_IN_STRING:[Ljava/lang/String;

.field private static final RATIO_16_9:D = 1.7777777777777777

.field private static final RATIO_16_9_IN_STRING:Ljava/lang/String; = "(16:9)"

.field private static final RATIO_3_2:D = 1.5

.field private static final RATIO_3_2_IN_STRING:Ljava/lang/String; = "(3:2)"

.field private static final RATIO_4_3:D = 1.3333333333333333

.field private static final RATIO_4_3_IN_STRING:Ljava/lang/String; = "(4:3)"

.field private static final RATIO_5_3:D = 1.6666666666666667

.field private static final RATIO_5_3_IN_STRING:Ljava/lang/String; = "(5:3)"

.field private static final SVGA:Ljava/lang/String; = "800x600"

.field private static final TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

.field private static final UNKNOWN:I = -0x1

.field private static final VGA:Ljava/lang/String; = "640x480"

.field private static final WQVGA:Ljava/lang/String; = "400x240"

.field private static final WVGA:Ljava/lang/String; = "800x480"

.field private static sFormat:Ljava/text/DecimalFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const-class v1, Lcom/freeme/camera/feature/mode/vsdof/SdofUtil;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/freeme/camera/common/debug/LogUtil$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/mode/vsdof/SdofUtil;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    const/4 v0, 0x4

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/freeme/camera/feature/mode/vsdof/SdofUtil;->RATIOS:[D

    const-string v0, "(16:9)"

    const-string v1, "(5:3)"

    const-string v2, "(3:2)"

    const-string v3, "(4:3)"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/freeme/camera/feature/mode/vsdof/SdofUtil;->RATIOS_IN_STRING:[Ljava/lang/String;

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "##0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/freeme/camera/feature/mode/vsdof/SdofUtil;->sFormat:Ljava/text/DecimalFormat;

    return-void

    nop

    :array_0
    .array-data 8
        0x3ffc71c71c71c71cL    # 1.7777777777777777
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

.method public static buildSize(Lcom/freeme/camera/common/utils/Size;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/freeme/camera/common/utils/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "null"

    return-object p0
.end method

.method public static getPixelsAndRatio(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    invoke-static {p0}, Lcom/freeme/camera/feature/mode/vsdof/SdofUtil;->valueToSize(Ljava/lang/String;)Lcom/freeme/camera/common/utils/Size;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/camera/common/utils/Size;->getWidth()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result v3

    int-to-double v3, v3

    div-double/2addr v1, v3

    const/4 v3, 0x0

    :goto_0
    sget-object v4, Lcom/freeme/camera/feature/mode/vsdof/SdofUtil;->RATIOS:[D

    array-length v5, v4

    const/4 v6, -0x1

    if-ge v3, v5, :cond_1

    aget-wide v7, v4, v3

    sub-double v4, v1, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v7, 0x3f947ae147ae147bL    # 0.02

    cmpg-double v4, v4, v7

    if-gez v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v6

    :goto_1
    if-ne v3, v6, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-virtual {v0}, Lcom/freeme/camera/common/utils/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result v2

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

    const-string p0, "VGA"

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
    sget-object p0, Lcom/freeme/camera/feature/mode/vsdof/SdofUtil;->RATIOS_IN_STRING:[Ljava/lang/String;

    aget-object p0, p0, v3

    sget-object v1, Lcom/freeme/camera/feature/mode/vsdof/SdofUtil;->sFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v0}, Lcom/freeme/camera/common/utils/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result v0

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

.method public static getSize(Ljava/lang/String;)Lcom/freeme/camera/common/utils/Size;
    .locals 4

    const/16 v0, 0x78

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-instance v2, Lcom/freeme/camera/common/utils/Size;

    invoke-direct {v2, v1, v0}, Lcom/freeme/camera/common/utils/Size;-><init>(II)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    sget-object v0, Lcom/freeme/camera/feature/mode/vsdof/SdofUtil;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSize("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") return "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-object v2
.end method

.method public static sizeToStr(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/freeme/camera/common/utils/Size;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/common/utils/Size;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/freeme/camera/common/utils/Size;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static sortSizeInDescending(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/freeme/camera/common/utils/Size;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/common/utils/Size;

    add-int/lit8 v2, v0, 0x1

    move v4, v0

    move-object v3, v1

    move v1, v2

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/freeme/camera/common/utils/Size;

    invoke-virtual {v5}, Lcom/freeme/camera/common/utils/Size;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result v7

    mul-int/2addr v6, v7

    invoke-virtual {v3}, Lcom/freeme/camera/common/utils/Size;->getWidth()I

    move-result v7

    invoke-virtual {v3}, Lcom/freeme/camera/common/utils/Size;->getHeight()I

    move-result v8

    mul-int/2addr v7, v8

    if-le v6, v7, :cond_0

    move v4, v1

    move-object v3, v5

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/freeme/camera/common/utils/Size;

    invoke-interface {p0, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0, v4, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v0, v2

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static splitSize(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/freeme/camera/common/utils/Size;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v2, 0x2c

    invoke-direct {v1, v2}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    invoke-interface {v1, p0}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/freeme/camera/feature/mode/vsdof/SdofUtil;->strToSize(Ljava/lang/String;)Lcom/freeme/camera/common/utils/Size;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    return-object v0

    :cond_3
    return-object p0
.end method

.method private static strToSize(Ljava/lang/String;)Lcom/freeme/camera/common/utils/Size;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/16 v1, 0x78

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lcom/freeme/camera/common/utils/Size;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-direct {v1, v0, p0}, Lcom/freeme/camera/common/utils/Size;-><init>(II)V

    return-object v1

    :cond_1
    sget-object v1, Lcom/freeme/camera/feature/mode/vsdof/SdofUtil;->TAG:Lcom/freeme/camera/common/debug/LogUtil$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid size parameter string="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/freeme/camera/common/debug/LogHelper;->e(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-object v0
.end method

.method private static valueToSize(Ljava/lang/String;)Lcom/freeme/camera/common/utils/Size;
    .locals 2

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

    new-instance v0, Lcom/freeme/camera/common/utils/Size;

    invoke-direct {v0, v1, p0}, Lcom/freeme/camera/common/utils/Size;-><init>(II)V

    return-object v0
.end method
