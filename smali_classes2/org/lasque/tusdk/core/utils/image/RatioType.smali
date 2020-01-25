.class public Lorg/lasque/tusdk/core/utils/image/RatioType;
.super Ljava/lang/Object;


# static fields
.field public static final defaultRatioTypes:[I

.field public static final ratioTypes:[I

.field public static final ratio_16_9:I = 0x80

.field public static final ratio_1_1:I = 0x2

.field public static final ratio_2_3:I = 0x4

.field public static final ratio_3_2:I = 0x20

.field public static final ratio_3_4:I = 0x8

.field public static final ratio_4_3:I = 0x40

.field public static final ratio_9_16:I = 0x10

.field public static final ratio_all:I = 0xff

.field public static final ratio_default:I = 0x1f

.field public static final ratio_orgin:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/lasque/tusdk/core/utils/image/RatioType;->ratioTypes:[I

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/lasque/tusdk/core/utils/image/RatioType;->defaultRatioTypes:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/ArrayList;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public static firstRatio(I)F
    .locals 0

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/image/RatioType;->firstRatioType(I)I

    move-result p0

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/image/RatioType;->ratio(I)F

    move-result p0

    return p0
.end method

.method public static firstRatioType(I)I
    .locals 6

    const/4 v0, 0x1

    if-lez p0, :cond_2

    const/16 v1, 0xff

    if-ne p0, v1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v1, Lorg/lasque/tusdk/core/utils/image/RatioType;->ratioTypes:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget v4, v1, v3

    and-int v5, v4, p0

    if-ne v4, v5, :cond_1

    move v0, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public static getRatioTypesByValue(I)[I
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lorg/lasque/tusdk/core/utils/image/RatioType;->ratioTypes:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    and-int v5, v4, p0

    if-ne v4, v5, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/image/RatioType;->a(Ljava/util/ArrayList;)[I

    move-result-object p0

    return-object p0
.end method

.method public static nextRatioType(II)I
    .locals 10

    invoke-static {p0}, Lorg/lasque/tusdk/core/utils/image/RatioType;->ratioCount(I)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return p1

    :cond_0
    new-array v1, v0, [I

    sget-object v2, Lorg/lasque/tusdk/core/utils/image/RatioType;->ratioTypes:[I

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v5, v3, :cond_3

    aget v8, v2, v5

    and-int v9, v8, p0

    if-ne v8, v9, :cond_2

    aput v8, v1, v7

    if-ne p1, v8, :cond_1

    move v6, v7

    :cond_1
    add-int/lit8 v7, v7, 0x1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v6, v6, 0x1

    if-ge v6, v0, :cond_4

    aget p0, v1, v6

    return p0

    :cond_4
    aget p0, v1, v4

    return p0
.end method

.method public static nextRatioType(III)I
    .locals 0

    invoke-static {p0, p1}, Lorg/lasque/tusdk/core/utils/image/RatioType;->nextRatioType(II)I

    move-result p1

    if-lez p2, :cond_0

    if-ne p1, p2, :cond_0

    invoke-static {p0, p1}, Lorg/lasque/tusdk/core/utils/image/RatioType;->nextRatioType(II)I

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method public static radioType(F)I
    .locals 7

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p0, v0

    float-to-double v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int p0, v1

    sget-object v1, Lorg/lasque/tusdk/core/utils/image/RatioType;->ratioTypes:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    invoke-static {v4}, Lorg/lasque/tusdk/core/utils/image/RatioType;->ratio(I)F

    move-result v5

    mul-float/2addr v5, v0

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    if-ne v5, p0, :cond_0

    return v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static ratio(I)F
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_6

    const/4 v0, 0x4

    if-eq p0, v0, :cond_5

    const/16 v0, 0x8

    if-eq p0, v0, :cond_4

    const/16 v0, 0x10

    if-eq p0, v0, :cond_3

    const/16 v0, 0x20

    if-eq p0, v0, :cond_2

    const/16 v0, 0x40

    if-eq p0, v0, :cond_1

    const/16 v0, 0x80

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const p0, 0x3fe38e39

    return p0

    :cond_1
    const p0, 0x3faaaaab

    return p0

    :cond_2
    const/high16 p0, 0x3fc00000    # 1.5f

    return p0

    :cond_3
    const/high16 p0, 0x3f100000    # 0.5625f

    return p0

    :cond_4
    const/high16 p0, 0x3f400000    # 0.75f

    return p0

    :cond_5
    const p0, 0x3f2aaaab

    return p0

    :cond_6
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public static ratioActionType(I)J
    .locals 2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_6

    const/4 v0, 0x4

    if-eq p0, v0, :cond_5

    const/16 v0, 0x8

    if-eq p0, v0, :cond_4

    const/16 v0, 0x10

    if-eq p0, v0, :cond_3

    const/16 v0, 0x20

    if-eq p0, v0, :cond_2

    const/16 v0, 0x40

    if-eq p0, v0, :cond_1

    const/16 v0, 0x80

    if-eq p0, v0, :cond_0

    sget-wide v0, Lorg/lasque/tusdk/modules/components/ComponentActType;->editCuter_action_ratio_orgin:J

    return-wide v0

    :cond_0
    sget-wide v0, Lorg/lasque/tusdk/modules/components/ComponentActType;->editCuter_action_ratio_16_9:J

    return-wide v0

    :cond_1
    sget-wide v0, Lorg/lasque/tusdk/modules/components/ComponentActType;->editCuter_action_ratio_4_3:J

    return-wide v0

    :cond_2
    sget-wide v0, Lorg/lasque/tusdk/modules/components/ComponentActType;->editCuter_action_ratio_3_2:J

    return-wide v0

    :cond_3
    sget-wide v0, Lorg/lasque/tusdk/modules/components/ComponentActType;->editCuter_action_ratio_9_16:J

    return-wide v0

    :cond_4
    sget-wide v0, Lorg/lasque/tusdk/modules/components/ComponentActType;->editCuter_action_ratio_3_4:J

    return-wide v0

    :cond_5
    sget-wide v0, Lorg/lasque/tusdk/modules/components/ComponentActType;->editCuter_action_ratio_2_3:J

    return-wide v0

    :cond_6
    sget-wide v0, Lorg/lasque/tusdk/modules/components/ComponentActType;->editCuter_action_ratio_1_1:J

    return-wide v0
.end method

.method public static ratioCount(I)I
    .locals 6

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    sget-object v0, Lorg/lasque/tusdk/core/utils/image/RatioType;->ratioTypes:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_2

    aget v4, v0, v2

    and-int v5, v4, p0

    if-ne v4, v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method public static validRatioTypes([I)[I
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget v2, p0, v1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    invoke-static {v2}, Lorg/lasque/tusdk/core/utils/image/RatioType;->ratio(I)F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_2

    sget-object p0, Lorg/lasque/tusdk/core/utils/image/RatioType;->ratioTypes:[I

    goto :goto_2

    :cond_2
    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/image/RatioType;->a(Ljava/util/ArrayList;)[I

    move-result-object p0

    :goto_2
    return-object p0
.end method
